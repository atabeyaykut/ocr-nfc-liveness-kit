.class public final synthetic La3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/b$a;
.implements Lh5/f;
.implements Lio/realm/g0$a;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, La3/k;->a:Ljava/lang/Object;

    iput-object p2, p0, La3/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lio/realm/g0;)V
    .locals 7

    .line 1
    iget-object v0, p0, La3/k;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveInfo;

    .line 4
    .line 5
    iget-object v1, p0, La3/k;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 8
    .line 9
    const-string v2, "it"

    .line 10
    .line 11
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getLocation()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v4, v3

    .line 35
    :goto_0
    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;

    .line 36
    .line 37
    invoke-direct {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;-><init>()V

    .line 38
    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object v6, v3

    .line 48
    :goto_1
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setId(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getDeviceAddress()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move-object v6, v3

    .line 59
    :goto_2
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setDeviceAddress(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getDeviceLatitude()Ljava/lang/Double;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    move-object v6, v3

    .line 70
    :goto_3
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setDeviceLatitude(Ljava/lang/Double;)V

    .line 71
    .line 72
    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getDeviceLongitude()Ljava/lang/Double;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    goto :goto_4

    .line 80
    :cond_4
    move-object v6, v3

    .line 81
    :goto_4
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setDeviceLongitude(Ljava/lang/Double;)V

    .line 82
    .line 83
    .line 84
    if-eqz v4, :cond_5

    .line 85
    .line 86
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getRadius()Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    goto :goto_5

    .line 91
    :cond_5
    move-object v6, v3

    .line 92
    :goto_5
    invoke-virtual {v5, v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setRadius(Ljava/lang/Integer;)V

    .line 93
    .line 94
    .line 95
    if-eqz v4, :cond_6

    .line 96
    .line 97
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->getUpdatedDate()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    :cond_6
    invoke-virtual {v5, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setUpdatedDate(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveInfo;->getAccidentPoint()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentLocationPoint;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentLocationPoint;->getLocationInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->getLatitude()D

    .line 113
    .line 114
    .line 115
    move-result-wide v3

    .line 116
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v5, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setAccidentLatitude(Ljava/lang/Double;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveInfo;->getAccidentPoint()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentLocationPoint;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentLocationPoint;->getLocationInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationInfo;->getLongitude()D

    .line 132
    .line 133
    .line 134
    move-result-wide v3

    .line 135
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v5, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setAccidentLongitude(Ljava/lang/Double;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveInfo;->getAccidentAddress()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v5, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;->setAccidentAddress(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    if-nez v2, :cond_7

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_7
    invoke-virtual {v2, v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->setLocation(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;)V

    .line 153
    .line 154
    .line 155
    :goto_6
    invoke-virtual {p1, v1}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, La3/k;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lae/a;

    .line 4
    .line 5
    iget-object v1, p0, La3/k;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/camera/core/ImageProxy;

    .line 8
    .line 9
    const-string v2, "this$0"

    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "$imageProxy"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "it"

    .line 20
    .line 21
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, v0, Lae/a;->b:Z

    .line 26
    .line 27
    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final execute()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, La3/k;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La3/m;

    .line 4
    .line 5
    iget-object v1, p0, La3/k;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/Map;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    int-to-long v3, v3

    .line 43
    sget-object v5, Ly2/c$a;->g:Ly2/c$a;

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    iget-object v6, v0, La3/m;->i:Lb3/c;

    .line 52
    .line 53
    invoke-interface {v6, v3, v4, v5, v2}, Lb3/c;->c(JLy2/c$a;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    return-object v0
.end method
