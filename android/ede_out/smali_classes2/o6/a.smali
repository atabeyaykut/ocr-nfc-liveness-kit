.class public final Lo6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo6/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/clearcut/z;Lorg/json/JSONObject;)Lp6/e;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "settings_version"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    const-string v0, "cache_duration"

    .line 8
    .line 9
    const/16 v2, 0xe10

    .line 10
    .line 11
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v2, "app"

    .line 16
    .line 17
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "status"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    const-string v3, "url"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    const-string v3, "reports_url"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    const-string v3, "ndk_reports_url"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    const-string v3, "update_required"

    .line 42
    .line 43
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    new-instance v7, Lp6/a;

    .line 47
    .line 48
    invoke-direct {v7, v1}, Lp6/a;-><init>(I)V

    .line 49
    .line 50
    .line 51
    const-string v2, "session"

    .line 52
    .line 53
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "max_custom_exception_events"

    .line 58
    .line 59
    const/16 v4, 0x8

    .line 60
    .line 61
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    new-instance v8, Lp6/c;

    .line 66
    .line 67
    invoke-direct {v8, v2}, Lp6/c;-><init>(I)V

    .line 68
    .line 69
    .line 70
    const-string v2, "features"

    .line 71
    .line 72
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v3, "collect_reports"

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    const-string v4, "collect_anrs"

    .line 84
    .line 85
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    new-instance v9, Lp6/b;

    .line 90
    .line 91
    invoke-direct {v9, v3, v1}, Lp6/b;-><init>(ZZ)V

    .line 92
    .line 93
    .line 94
    int-to-long v0, v0

    .line 95
    const-string v2, "expires_at"

    .line 96
    .line 97
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_0

    .line 102
    .line 103
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 104
    .line 105
    .line 106
    move-result-wide p1

    .line 107
    move-wide v5, p1

    .line 108
    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide p1

    .line 116
    const-wide/16 v2, 0x3e8

    .line 117
    .line 118
    mul-long v0, v0, v2

    .line 119
    .line 120
    add-long/2addr v0, p1

    .line 121
    move-wide v5, v0

    .line 122
    :goto_0
    new-instance p1, Lp6/e;

    .line 123
    .line 124
    move-object v4, p1

    .line 125
    invoke-direct/range {v4 .. v9}, Lp6/e;-><init>(JLp6/a;Lp6/c;Lp6/b;)V

    .line 126
    .line 127
    .line 128
    return-object p1
.end method
