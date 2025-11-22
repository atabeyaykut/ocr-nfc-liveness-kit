.class public final synthetic Landroidx/camera/camera2/interop/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Config$OptionMatcher;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Lb3/r$a;
.implements La7/a$a;
.implements Lio/realm/g0$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/camera/camera2/interop/h;->a:I

    iput-object p2, p0, Landroidx/camera/camera2/interop/h;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/camera2/interop/h;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La7/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/h;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La7/a$a;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/camera/camera2/interop/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, La7/a$a;

    .line 8
    .line 9
    invoke-interface {v0, p1}, La7/a$a;->a(La7/b;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, p1}, La7/a$a;->a(La7/b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/h;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lb3/r;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/camera/camera2/interop/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lu2/s;

    .line 8
    .line 9
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    sget-object v2, Lb3/r;->f:Lr2/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v1}, Lb3/r;->e(Landroid/database/sqlite/SQLiteDatabase;Lu2/s;)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Lb3/r;->d()Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x1

    .line 30
    new-array v1, v1, [Ljava/lang/String;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    aput-object p1, v1, v2

    .line 38
    .line 39
    const-string p1, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 54
    .line 55
    .line 56
    move-object p1, v0

    .line 57
    :goto_0
    return-object p1

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 60
    .line 61
    .line 62
    throw v0
.end method

.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/interop/h;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/CameraX;

    iget-object v1, p0, Landroidx/camera/camera2/interop/h;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1, p1}, Landroidx/camera/core/CameraX;->b(Landroidx/camera/core/CameraX;Landroid/content/Context;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lio/realm/g0;)V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/camera/camera2/interop/h;->a:I

    .line 2
    .line 3
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 4
    .line 5
    const-string v2, "it"

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/camera/camera2/interop/h;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/camera/camera2/interop/h;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :pswitch_0
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveInfo;

    .line 16
    .line 17
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 18
    .line 19
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 31
    .line 32
    sget-object v1, Lyd/a;->a:Lyd/a$a;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v5, "comment "

    .line 37
    .line 38
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveInfo;->getComment()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/4 v5, 0x0

    .line 53
    new-array v5, v5, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {v1, v2, v5}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveInfo;->getComment()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->setAccidentComment(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {p1, v3}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :goto_1
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveInfo;

    .line 73
    .line 74
    check-cast v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 75
    .line 76
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    goto :goto_2

    .line 97
    :cond_1
    move-object v2, v1

    .line 98
    :goto_2
    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 99
    .line 100
    invoke-direct {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;-><init>()V

    .line 101
    .line 102
    .line 103
    if-eqz v2, :cond_2

    .line 104
    .line 105
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    goto :goto_3

    .line 110
    :cond_2
    move-object v6, v1

    .line 111
    :goto_3
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setId(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    if-eqz v2, :cond_3

    .line 115
    .line 116
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getDeviceAddress()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    goto :goto_4

    .line 121
    :cond_3
    move-object v6, v1

    .line 122
    :goto_4
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setDeviceAddress(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    if-eqz v2, :cond_4

    .line 126
    .line 127
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getDeviceLatitude()Ljava/lang/Double;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    goto :goto_5

    .line 132
    :cond_4
    move-object v6, v1

    .line 133
    :goto_5
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setDeviceLatitude(Ljava/lang/Double;)V

    .line 134
    .line 135
    .line 136
    if-eqz v2, :cond_5

    .line 137
    .line 138
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getDeviceLongitude()Ljava/lang/Double;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    goto :goto_6

    .line 143
    :cond_5
    move-object v6, v1

    .line 144
    :goto_6
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setDeviceLongitude(Ljava/lang/Double;)V

    .line 145
    .line 146
    .line 147
    if-eqz v2, :cond_6

    .line 148
    .line 149
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getRadius()Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    goto :goto_7

    .line 154
    :cond_6
    move-object v6, v1

    .line 155
    :goto_7
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setRadius(Ljava/lang/Integer;)V

    .line 156
    .line 157
    .line 158
    if-eqz v2, :cond_7

    .line 159
    .line 160
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getUpdatedDate()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    :cond_7
    invoke-virtual {v5, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setUpdatedDate(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveInfo;->getAccidentPoint()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentLocationPoint;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentLocationPoint;->getLocationInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->getLatitude()D

    .line 176
    .line 177
    .line 178
    move-result-wide v1

    .line 179
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v5, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setAccidentLatitude(Ljava/lang/Double;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveInfo;->getAccidentPoint()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentLocationPoint;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentLocationPoint;->getLocationInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->getLongitude()D

    .line 195
    .line 196
    .line 197
    move-result-wide v1

    .line 198
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v5, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setAccidentLongitude(Ljava/lang/Double;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveInfo;->getAccidentAddress()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v5, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setAccidentAddress(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    if-nez v0, :cond_8

    .line 213
    .line 214
    goto :goto_8

    .line 215
    :cond_8
    invoke-virtual {v0, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->setLocation(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;)V

    .line 216
    .line 217
    .line 218
    :goto_8
    invoke-virtual {p1, v3}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    nop

    .line 223
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final onOptionMatched(Landroidx/camera/core/impl/Config$Option;)Z
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/interop/h;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;

    iget-object v1, p0, Landroidx/camera/camera2/interop/h;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/core/impl/Config;

    invoke-static {v0, v1, p1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->a(Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/Config$Option;)Z

    move-result p1

    return p1
.end method
