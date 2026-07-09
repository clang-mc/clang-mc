#pragma once

/* Hand-written binding (schema marks 'team' as hand_written). `team modify` is a
 * two-level tree whose <option> keyword dictates the <value>'s type (color enum /
 * bool / visibility enum / collision enum / text component). That option->value
 * dependency is captured by the TeamOpt by-value POD tag union: each constructor
 * takes exactly its option's value, and team_modify(team, opt) stays fixed-shape.
 * Commands are assembled as concrete text and run via _Command_ExecResultAndRelease. */

#include "bindings/CommandSupport.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    TEAM_COLOR_RESET,
    TEAM_COLOR_BLACK,
    TEAM_COLOR_DARK_BLUE,
    TEAM_COLOR_DARK_GREEN,
    TEAM_COLOR_DARK_AQUA,
    TEAM_COLOR_DARK_RED,
    TEAM_COLOR_DARK_PURPLE,
    TEAM_COLOR_GOLD,
    TEAM_COLOR_GRAY,
    TEAM_COLOR_DARK_GRAY,
    TEAM_COLOR_BLUE,
    TEAM_COLOR_GREEN,
    TEAM_COLOR_AQUA,
    TEAM_COLOR_RED,
    TEAM_COLOR_LIGHT_PURPLE,
    TEAM_COLOR_YELLOW,
    TEAM_COLOR_WHITE
} TeamColor;

typedef enum {
    TEAM_VISIBILITY_NEVER,
    TEAM_VISIBILITY_HIDE_FOR_OTHER_TEAMS,
    TEAM_VISIBILITY_HIDE_FOR_OWN_TEAM,
    TEAM_VISIBILITY_ALWAYS
} TeamVisibility;

typedef enum {
    TEAM_COLLISION_ALWAYS,
    TEAM_COLLISION_NEVER,
    TEAM_COLLISION_PUSH_OTHER_TEAMS,
    TEAM_COLLISION_PUSH_OWN_TEAM
} TeamCollision;

static inline const char *
_Team_ColorLiteral(TeamColor color)
{
    switch (color) {
        case TEAM_COLOR_RESET:        return "reset";
        case TEAM_COLOR_BLACK:        return "black";
        case TEAM_COLOR_DARK_BLUE:    return "dark_blue";
        case TEAM_COLOR_DARK_GREEN:   return "dark_green";
        case TEAM_COLOR_DARK_AQUA:    return "dark_aqua";
        case TEAM_COLOR_DARK_RED:     return "dark_red";
        case TEAM_COLOR_DARK_PURPLE:  return "dark_purple";
        case TEAM_COLOR_GOLD:         return "gold";
        case TEAM_COLOR_GRAY:         return "gray";
        case TEAM_COLOR_DARK_GRAY:    return "dark_gray";
        case TEAM_COLOR_BLUE:         return "blue";
        case TEAM_COLOR_GREEN:        return "green";
        case TEAM_COLOR_AQUA:         return "aqua";
        case TEAM_COLOR_RED:          return "red";
        case TEAM_COLOR_LIGHT_PURPLE: return "light_purple";
        case TEAM_COLOR_YELLOW:       return "yellow";
        case TEAM_COLOR_WHITE:        return "white";
        default:                      return NULL;
    }
}

static inline const char *
_Team_VisibilityLiteral(TeamVisibility v)
{
    switch (v) {
        case TEAM_VISIBILITY_NEVER:                return "never";
        case TEAM_VISIBILITY_HIDE_FOR_OTHER_TEAMS: return "hideForOtherTeams";
        case TEAM_VISIBILITY_HIDE_FOR_OWN_TEAM:    return "hideForOwnTeam";
        case TEAM_VISIBILITY_ALWAYS:               return "always";
        default:                                   return NULL;
    }
}

static inline const char *
_Team_CollisionLiteral(TeamCollision c)
{
    switch (c) {
        case TEAM_COLLISION_ALWAYS:           return "always";
        case TEAM_COLLISION_NEVER:            return "never";
        case TEAM_COLLISION_PUSH_OTHER_TEAMS: return "pushOtherTeams";
        case TEAM_COLLISION_PUSH_OWN_TEAM:    return "pushOwnTeam";
        default:                              return NULL;
    }
}

/* --- team modify option (POD tag union) ----------------------------------- */
typedef enum {
    TEAM_OPT_COLOR,
    TEAM_OPT_FRIENDLY_FIRE,
    TEAM_OPT_SEE_FRIENDLY_INVISIBLES,
    TEAM_OPT_NAMETAG_VISIBILITY,
    TEAM_OPT_DEATH_MESSAGE_VISIBILITY,
    TEAM_OPT_COLLISION_RULE,
    TEAM_OPT_DISPLAY_NAME,
    TEAM_OPT_PREFIX,
    TEAM_OPT_SUFFIX
} TeamOptKind;

typedef struct {
    TeamOptKind   kind;
    int           ivalue; /* color / bool / visibility / collision */
    TextComponent text;   /* displayName / prefix / suffix (borrowed) */
} TeamOpt;

static inline TeamOpt TeamOpt_Color(TeamColor color)
{ TeamOpt o; o.kind = TEAM_OPT_COLOR; o.ivalue = (int)color; o.text = TextComponent_FromJson(NULL); return o; }
static inline TeamOpt TeamOpt_FriendlyFire(int enabled)
{ TeamOpt o; o.kind = TEAM_OPT_FRIENDLY_FIRE; o.ivalue = enabled ? 1 : 0; o.text = TextComponent_FromJson(NULL); return o; }
static inline TeamOpt TeamOpt_SeeFriendlyInvisibles(int enabled)
{ TeamOpt o; o.kind = TEAM_OPT_SEE_FRIENDLY_INVISIBLES; o.ivalue = enabled ? 1 : 0; o.text = TextComponent_FromJson(NULL); return o; }
static inline TeamOpt TeamOpt_NametagVisibility(TeamVisibility v)
{ TeamOpt o; o.kind = TEAM_OPT_NAMETAG_VISIBILITY; o.ivalue = (int)v; o.text = TextComponent_FromJson(NULL); return o; }
static inline TeamOpt TeamOpt_DeathMessageVisibility(TeamVisibility v)
{ TeamOpt o; o.kind = TEAM_OPT_DEATH_MESSAGE_VISIBILITY; o.ivalue = (int)v; o.text = TextComponent_FromJson(NULL); return o; }
static inline TeamOpt TeamOpt_CollisionRule(TeamCollision c)
{ TeamOpt o; o.kind = TEAM_OPT_COLLISION_RULE; o.ivalue = (int)c; o.text = TextComponent_FromJson(NULL); return o; }
static inline TeamOpt TeamOpt_DisplayName(TextComponent name)
{ TeamOpt o; o.kind = TEAM_OPT_DISPLAY_NAME; o.ivalue = 0; o.text = name; return o; }
static inline TeamOpt TeamOpt_Prefix(TextComponent prefix)
{ TeamOpt o; o.kind = TEAM_OPT_PREFIX; o.ivalue = 0; o.text = prefix; return o; }
static inline TeamOpt TeamOpt_Suffix(TextComponent suffix)
{ TeamOpt o; o.kind = TEAM_OPT_SUFFIX; o.ivalue = 0; o.text = suffix; return o; }

/* --- assembly ------------------------------------------------------------- */
static inline int
_Team_AppendBool(McfStrRef cmd, int value)
{
    return McfStrRef_AppendLiteral(cmd, value ? "true" : "false");
}

static inline int
_Team_AppendOpt(McfStrRef cmd, TeamOpt opt)
{
    const char *lit;

    switch (opt.kind) {
        case TEAM_OPT_COLOR:
            lit = _Team_ColorLiteral((TeamColor)opt.ivalue);
            if (lit == NULL) return -1;
            if (McfStrRef_AppendLiteral(cmd, "color ") != 0) return -1;
            return McfStrRef_AppendLiteral(cmd, lit);
        case TEAM_OPT_FRIENDLY_FIRE:
            if (McfStrRef_AppendLiteral(cmd, "friendlyFire ") != 0) return -1;
            return _Team_AppendBool(cmd, opt.ivalue);
        case TEAM_OPT_SEE_FRIENDLY_INVISIBLES:
            if (McfStrRef_AppendLiteral(cmd, "seeFriendlyInvisibles ") != 0) return -1;
            return _Team_AppendBool(cmd, opt.ivalue);
        case TEAM_OPT_NAMETAG_VISIBILITY:
            lit = _Team_VisibilityLiteral((TeamVisibility)opt.ivalue);
            if (lit == NULL) return -1;
            if (McfStrRef_AppendLiteral(cmd, "nametagVisibility ") != 0) return -1;
            return McfStrRef_AppendLiteral(cmd, lit);
        case TEAM_OPT_DEATH_MESSAGE_VISIBILITY:
            lit = _Team_VisibilityLiteral((TeamVisibility)opt.ivalue);
            if (lit == NULL) return -1;
            if (McfStrRef_AppendLiteral(cmd, "deathMessageVisibility ") != 0) return -1;
            return McfStrRef_AppendLiteral(cmd, lit);
        case TEAM_OPT_COLLISION_RULE:
            lit = _Team_CollisionLiteral((TeamCollision)opt.ivalue);
            if (lit == NULL) return -1;
            if (McfStrRef_AppendLiteral(cmd, "collisionRule ") != 0) return -1;
            return McfStrRef_AppendLiteral(cmd, lit);
        case TEAM_OPT_DISPLAY_NAME:
            if (McfStrRef_AppendLiteral(cmd, "displayName ") != 0) return -1;
            return TextComponent_AppendTo(cmd, opt.text);
        case TEAM_OPT_PREFIX:
            if (McfStrRef_AppendLiteral(cmd, "prefix ") != 0) return -1;
            return TextComponent_AppendTo(cmd, opt.text);
        case TEAM_OPT_SUFFIX:
            if (McfStrRef_AppendLiteral(cmd, "suffix ") != 0) return -1;
            return TextComponent_AppendTo(cmd, opt.text);
        default:
            return -1;
    }
}

static inline McfStrRef
_Team_Begin(const char *lead, const char *team)
{
    McfStrRef cmd;

    cmd = McfStrRef_FromLiteral(lead);
    if (cmd == NULL) {
        return NULL;
    }
    if (McfStrRef_AppendCString(cmd, team) != 0) {
        McfStrRef_Release(cmd);
        return NULL;
    }
    return cmd;
}

/* --- public API ----------------------------------------------------------- */

/* team list */
static inline int
team_list(void)
{
    McfStrRef cmd;

    cmd = McfStrRef_FromLiteral("team list");
    return _Command_ExecResultAndRelease(cmd);
}

/* team list <team> */
static inline int
team_list_of(const char *team)
{
    return _Command_ExecResultAndRelease(_Team_Begin("team list ", team));
}

/* team add <team> */
static inline int
team_add(const char *team)
{
    return _Command_ExecResultAndRelease(_Team_Begin("team add ", team));
}

/* team add <team> <displayName> */
static inline int
team_add_named(const char *team, TextComponent display)
{
    McfStrRef cmd;

    cmd = _Team_Begin("team add ", team);
    if (cmd == NULL) {
        return -1;
    }
    if (McfStrRef_AppendLiteral(cmd, " ") != 0 ||
        TextComponent_AppendTo(cmd, display) != 0) {
        McfStrRef_Release(cmd);
        return -1;
    }
    return _Command_ExecResultAndRelease(cmd);
}

/* team remove <team> */
static inline int
team_remove(const char *team)
{
    return _Command_ExecResultAndRelease(_Team_Begin("team remove ", team));
}

/* team empty <team> */
static inline int
team_empty(const char *team)
{
    return _Command_ExecResultAndRelease(_Team_Begin("team empty ", team));
}

/* team join <team> */
static inline int
team_join(const char *team)
{
    return _Command_ExecResultAndRelease(_Team_Begin("team join ", team));
}

/* team join <team> <members> */
static inline int
team_join_members(const char *team, Target members)
{
    McfStrRef cmd;

    cmd = _Team_Begin("team join ", team);
    if (cmd == NULL) {
        return -1;
    }
    if (McfStrRef_AppendLiteral(cmd, " ") != 0 ||
        McfStrRef_AppendCString(cmd, Target_CStr(members)) != 0) {
        McfStrRef_Release(cmd);
        return -1;
    }
    return _Command_ExecResultAndRelease(cmd);
}

/* team leave <members> */
static inline int
team_leave(Target members)
{
    McfStrRef cmd;

    cmd = McfStrRef_FromLiteral("team leave ");
    if (cmd == NULL) {
        return -1;
    }
    if (McfStrRef_AppendCString(cmd, Target_CStr(members)) != 0) {
        McfStrRef_Release(cmd);
        return -1;
    }
    return _Command_ExecResultAndRelease(cmd);
}

/* team modify <team> <option> <value> */
static inline int
team_modify(const char *team, TeamOpt opt)
{
    McfStrRef cmd;

    cmd = _Team_Begin("team modify ", team);
    if (cmd == NULL) {
        return -1;
    }
    if (McfStrRef_AppendLiteral(cmd, " ") != 0 ||
        _Team_AppendOpt(cmd, opt) != 0) {
        McfStrRef_Release(cmd);
        return -1;
    }
    return _Command_ExecResultAndRelease(cmd);
}

#ifdef __cplusplus
}
#endif
