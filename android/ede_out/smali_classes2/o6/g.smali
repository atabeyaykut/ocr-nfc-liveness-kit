.class public final Lo6/g;
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
    .locals 11
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
    const-string v2, "fabric"

    .line 16
    .line 17
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "app"

    .line 22
    .line 23
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "status"

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v5, "new"

    .line 34
    .line 35
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const-string v5, "bundle_id"

    .line 40
    .line 41
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const-string v6, "org_id"

    .line 46
    .line 47
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 55
    .line 56
    new-array v6, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object v5, v6, v1

    .line 59
    .line 60
    const-string v7, "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s"

    .line 61
    .line 62
    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    :goto_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 66
    .line 67
    new-array v6, v2, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object v5, v6, v1

    .line 70
    .line 71
    const-string v7, "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports"

    .line 72
    .line 73
    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    new-array v6, v2, [Ljava/lang/Object;

    .line 77
    .line 78
    aput-object v5, v6, v1

    .line 79
    .line 80
    const-string v5, "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps"

    .line 81
    .line 82
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    const-string v4, "update_required"

    .line 86
    .line 87
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    const-string v4, "report_upload_variant"

    .line 91
    .line 92
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    const-string v4, "native_report_upload_variant"

    .line 96
    .line 97
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 98
    .line 99
    .line 100
    new-instance v8, Lp6/a;

    .line 101
    .line 102
    invoke-direct {v8}, Lp6/a;-><init>()V

    .line 103
    .line 104
    .line 105
    new-instance v9, Lp6/c;

    .line 106
    .line 107
    const/16 v3, 0x8

    .line 108
    .line 109
    invoke-direct {v9, v3}, Lp6/c;-><init>(I)V

    .line 110
    .line 111
    .line 112
    const-string v3, "features"

    .line 113
    .line 114
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-string v4, "collect_reports"

    .line 119
    .line 120
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    const-string v4, "collect_anrs"

    .line 125
    .line 126
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    new-instance v10, Lp6/b;

    .line 131
    .line 132
    invoke-direct {v10, v2, v1}, Lp6/b;-><init>(ZZ)V

    .line 133
    .line 134
    .line 135
    int-to-long v0, v0

    .line 136
    const-string v2, "expires_at"

    .line 137
    .line 138
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_1

    .line 143
    .line 144
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 145
    .line 146
    .line 147
    move-result-wide p1

    .line 148
    move-wide v6, p1

    .line 149
    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 154
    .line 155
    .line 156
    move-result-wide p1

    .line 157
    const-wide/16 v2, 0x3e8

    .line 158
    .line 159
    mul-long v0, v0, v2

    .line 160
    .line 161
    add-long/2addr v0, p1

    .line 162
    move-wide v6, v0

    .line 163
    :goto_1
    new-instance p1, Lp6/e;

    .line 164
    .line 165
    move-object v5, p1

    .line 166
    invoke-direct/range {v5 .. v10}, Lp6/e;-><init>(JLp6/a;Lp6/c;Lp6/b;)V

    .line 167
    .line 168
    .line 169
    return-object p1
.end method
