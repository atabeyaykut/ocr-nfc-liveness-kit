.class public final synthetic Lkh/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx4/e;


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkh/a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;

    return-void
.end method


# virtual methods
.method public final a(Lx4/c;)V
    .locals 12

    .line 1
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->m:[Lda/m;

    .line 2
    .line 3
    iget-object v0, p0, Lkh/a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;

    .line 4
    .line 5
    const-string v1, "this$0"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v7, p1, Lx4/c;->a:Ly4/b;

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 13
    .line 14
    iget-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->e:Ljava/lang/Double;

    .line 15
    .line 16
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iget-object v4, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->f:Ljava/lang/Double;

    .line 24
    .line 25
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->g:Ljava/lang/Double;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    const/4 v4, 0x0

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    const-wide/16 v8, 0x0

    .line 46
    .line 47
    cmpl-double v2, v5, v8

    .line 48
    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v2, 0x0

    .line 54
    :goto_0
    if-nez v2, :cond_2

    .line 55
    .line 56
    iget-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->h:Ljava/lang/Double;

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    cmpl-double v2, v5, v8

    .line 65
    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 v2, 0x0

    .line 71
    :goto_1
    if-nez v2, :cond_2

    .line 72
    .line 73
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 74
    .line 75
    iget-object v5, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->g:Ljava/lang/Double;

    .line 76
    .line 77
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    iget-object v8, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->h:Ljava/lang/Double;

    .line 85
    .line 86
    invoke-static {v8}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 90
    .line 91
    .line 92
    move-result-wide v8

    .line 93
    invoke-direct {v2, v5, v6, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 98
    .line 99
    iget-object v5, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->e:Ljava/lang/Double;

    .line 100
    .line 101
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 105
    .line 106
    .line 107
    move-result-wide v5

    .line 108
    iget-object v8, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->f:Ljava/lang/Double;

    .line 109
    .line 110
    invoke-static {v8}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 114
    .line 115
    .line 116
    move-result-wide v8

    .line 117
    invoke-direct {v2, v5, v6, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 118
    .line 119
    .line 120
    :goto_2
    move-object v8, v2

    .line 121
    new-instance v9, Lz4/c;

    .line 122
    .line 123
    invoke-direct {v9}, Lz4/c;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object v1, v9, Lz4/c;->a:Lcom/google/android/gms/maps/model/LatLng;

    .line 127
    .line 128
    iput-boolean v4, v9, Lz4/c;->h:Z

    .line 129
    .line 130
    const v1, 0x7f060041

    .line 131
    .line 132
    .line 133
    iput v1, v9, Lz4/c;->d:I

    .line 134
    .line 135
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 136
    .line 137
    iput-wide v1, v9, Lz4/c;->b:D

    .line 138
    .line 139
    invoke-virtual {p1, v9}, Lx4/c;->a(Lz4/c;)Lz4/b;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    new-instance v1, Lz4/e;

    .line 144
    .line 145
    invoke-direct {v1}, Lz4/e;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->d:Landroid/content/Context;

    .line 149
    .line 150
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->E(Landroid/content/Context;)Lz4/a;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    iput-object v2, v1, Lz4/e;->d:Lz4/a;

    .line 158
    .line 159
    iput-boolean v3, v1, Lz4/e;->g:Z

    .line 160
    .line 161
    invoke-virtual {v1, v8}, Lz4/e;->E(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v1}, Lx4/c;->b(Lz4/e;)V

    .line 165
    .line 166
    .line 167
    new-instance v11, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$c;

    .line 168
    .line 169
    move-object v1, v11

    .line 170
    move-object v2, v0

    .line 171
    move-object v3, v10

    .line 172
    move-object v4, p1

    .line 173
    move-object v5, v9

    .line 174
    move-object v6, v8

    .line 175
    invoke-direct/range {v1 .. v6}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;Lz4/b;Lx4/c;Lz4/c;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 176
    .line 177
    .line 178
    :try_start_0
    new-instance v1, Lx4/j;

    .line 179
    .line 180
    invoke-direct {v1, v11}, Lx4/j;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$c;)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v7, v1}, Ly4/b;->H(Lx4/j;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    .line 185
    .line 186
    invoke-static {v8}, Lx4/b;->a(Lcom/google/android/gms/maps/model/LatLng;)Lx4/a;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p1, v1}, Lx4/c;->c(Lx4/a;)V

    .line 191
    .line 192
    .line 193
    new-instance v1, Lkh/b;

    .line 194
    .line 195
    invoke-direct {v1, v0, v10, p1, v9}, Lkh/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;Lz4/b;Lx4/c;Lz4/c;)V

    .line 196
    .line 197
    .line 198
    :try_start_1
    new-instance p1, Lx4/k;

    .line 199
    .line 200
    invoke-direct {p1, v1}, Lx4/k;-><init>(Lkh/b;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v7, p1}, Ly4/b;->Z(Lx4/k;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :catch_0
    move-exception p1

    .line 208
    new-instance v0, Lz4/g;

    .line 209
    .line 210
    invoke-direct {v0, p1}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 211
    .line 212
    .line 213
    throw v0

    .line 214
    :catch_1
    move-exception p1

    .line 215
    new-instance v0, Lz4/g;

    .line 216
    .line 217
    invoke-direct {v0, p1}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 218
    .line 219
    .line 220
    throw v0
.end method
