.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx4/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;

.field public final synthetic b:Lz4/b;

.field public final synthetic c:Lx4/c;

.field public final synthetic d:Lz4/c;

.field public final synthetic e:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;Lz4/b;Lx4/c;Lz4/c;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$c;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$c;->b:Lz4/b;

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$c;->c:Lx4/c;

    iput-object p4, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$c;->d:Lz4/c;

    iput-object p5, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$c;->e:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lz4/d;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lz4/d;->a()Lcom/google/android/gms/maps/model/LatLng;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "marker.position"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->m:[Lda/m;

    .line 11
    .line 12
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$c;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$c;->b:Lz4/b;

    .line 18
    .line 19
    invoke-static {v0, v2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->F(Lcom/google/android/gms/maps/model/LatLng;Lz4/b;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$c;->c:Lx4/c;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget-object v0, v3, Lx4/c;->a:Ly4/b;

    .line 32
    .line 33
    invoke-interface {v0}, Ly4/b;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    new-instance v0, Lz4/e;

    .line 37
    .line 38
    invoke-direct {v0}, Lz4/e;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v4, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->d:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->E(Landroid/content/Context;)Lz4/a;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iput-object v4, v0, Lz4/e;->d:Lz4/a;

    .line 51
    .line 52
    iput-boolean v2, v0, Lz4/e;->g:Z

    .line 53
    .line 54
    invoke-virtual {p1}, Lz4/d;->a()Lcom/google/android/gms/maps/model/LatLng;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Lz4/e;->E(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lz4/d;->a()Lcom/google/android/gms/maps/model/LatLng;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-wide v4, v2, Lcom/google/android/gms/maps/model/LatLng;->a:D

    .line 66
    .line 67
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iput-object v2, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->j:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1}, Lz4/d;->a()Lcom/google/android/gms/maps/model/LatLng;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget-wide v4, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    .line 78
    .line 79
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iput-object v2, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->k:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p1}, Lz4/d;->a()Lcom/google/android/gms/maps/model/LatLng;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :catch_0
    move-exception p1

    .line 92
    new-instance v0, Lz4/g;

    .line 93
    .line 94
    invoke-direct {v0, p1}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_0
    const p1, 0x7f130133

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->G(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    :try_start_1
    iget-object p1, v3, Lx4/c;->a:Ly4/b;

    .line 108
    .line 109
    invoke-interface {p1}, Ly4/b;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .line 111
    .line 112
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->j:Ljava/lang/String;

    .line 113
    .line 114
    const/4 v0, 0x0

    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    const/4 p1, 0x0

    .line 125
    goto :goto_1

    .line 126
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 127
    :goto_1
    if-eqz p1, :cond_5

    .line 128
    .line 129
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->k:Ljava/lang/String;

    .line 130
    .line 131
    if-eqz p1, :cond_3

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_4

    .line 138
    .line 139
    :cond_3
    const/4 v0, 0x1

    .line 140
    :cond_4
    if-eqz v0, :cond_5

    .line 141
    .line 142
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$c;->e:Lcom/google/android/gms/maps/model/LatLng;

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_5
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    .line 146
    .line 147
    iget-object v0, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->j:Ljava/lang/String;

    .line 148
    .line 149
    const/4 v4, 0x0

    .line 150
    if-eqz v0, :cond_6

    .line 151
    .line 152
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 153
    .line 154
    .line 155
    move-result-wide v5

    .line 156
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    goto :goto_2

    .line 161
    :cond_6
    move-object v0, v4

    .line 162
    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 166
    .line 167
    .line 168
    move-result-wide v5

    .line 169
    iget-object v0, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->k:Ljava/lang/String;

    .line 170
    .line 171
    if-eqz v0, :cond_7

    .line 172
    .line 173
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 174
    .line 175
    .line 176
    move-result-wide v7

    .line 177
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 185
    .line 186
    .line 187
    move-result-wide v7

    .line 188
    invoke-direct {p1, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 189
    .line 190
    .line 191
    :goto_3
    new-instance v0, Lz4/e;

    .line 192
    .line 193
    invoke-direct {v0}, Lz4/e;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->d:Landroid/content/Context;

    .line 197
    .line 198
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->E(Landroid/content/Context;)Lz4/a;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    iput-object v1, v0, Lz4/e;->d:Lz4/a;

    .line 206
    .line 207
    iput-boolean v2, v0, Lz4/e;->g:Z

    .line 208
    .line 209
    invoke-virtual {v0, p1}, Lz4/e;->E(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 210
    .line 211
    .line 212
    :goto_4
    invoke-static {p1}, Lx4/b;->a(Lcom/google/android/gms/maps/model/LatLng;)Lx4/a;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {v3, p1}, Lx4/c;->c(Lx4/a;)V

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment$c;->d:Lz4/c;

    .line 220
    .line 221
    invoke-virtual {v3, p1}, Lx4/c;->a(Lz4/c;)Lz4/b;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v0}, Lx4/c;->b(Lz4/e;)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :catch_1
    move-exception p1

    .line 229
    new-instance v0, Lz4/g;

    .line 230
    .line 231
    invoke-direct {v0, p1}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 232
    .line 233
    .line 234
    throw v0
.end method

.method public final b(Lz4/d;)V
    .locals 0

    return-void
.end method

.method public final c(Lz4/d;)V
    .locals 0

    return-void
.end method
