.class public abstract Ly4/e;
.super Ln4/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IOnMapClickListener"

    invoke-direct {p0, v0}, Ln4/e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final w0(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_2

    .line 3
    .line 4
    sget-object p1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    .line 6
    sget v1, Ln4/f;->a:I

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/os/Parcelable;

    .line 21
    .line 22
    :goto_0
    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    .line 23
    .line 24
    invoke-static {p2}, Ln4/f;->a(Landroid/os/Parcel;)V

    .line 25
    .line 26
    .line 27
    move-object p2, p0

    .line 28
    check-cast p2, Lx4/k;

    .line 29
    .line 30
    iget-object p2, p2, Lx4/k;->a:Lx4/c$a;

    .line 31
    .line 32
    check-cast p2, Lkh/b;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->m:[Lda/m;

    .line 38
    .line 39
    iget-object v1, p2, Lkh/b;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;

    .line 40
    .line 41
    const-string v2, "this$0"

    .line 42
    .line 43
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p2, Lkh/b;->b:Lz4/b;

    .line 47
    .line 48
    const-string v3, "$circle"

    .line 49
    .line 50
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, p2, Lkh/b;->c:Lx4/c;

    .line 54
    .line 55
    const-string v4, "$googleMap"

    .line 56
    .line 57
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p2, Lkh/b;->d:Lz4/c;

    .line 61
    .line 62
    const-string v4, "$circleOptions"

    .line 63
    .line 64
    invoke-static {p2, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v4, "latLng"

    .line 68
    .line 69
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v4, Lz4/e;

    .line 73
    .line 74
    invoke-direct {v4}, Lz4/e;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v5, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->d:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v5}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->E(Landroid/content/Context;)Lz4/a;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    iput-object v5, v4, Lz4/e;->d:Lz4/a;

    .line 87
    .line 88
    iput-boolean v0, v4, Lz4/e;->g:Z

    .line 89
    .line 90
    invoke-virtual {v4, p1}, Lz4/e;->E(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->F(Lcom/google/android/gms/maps/model/LatLng;Lz4/b;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    :try_start_0
    iget-object v2, v3, Lx4/c;->a:Ly4/b;

    .line 100
    .line 101
    invoke-interface {v2}, Ly4/b;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    .line 105
    .line 106
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    iput-object v2, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->j:Ljava/lang/String;

    .line 111
    .line 112
    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->b:D

    .line 113
    .line 114
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iput-object v2, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->k:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {p1}, Lx4/b;->a(Lcom/google/android/gms/maps/model/LatLng;)Lx4/a;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v3, p1}, Lx4/c;->c(Lx4/a;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, p2}, Lx4/c;->a(Lz4/c;)Lz4/b;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v4}, Lx4/c;->b(Lz4/e;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catch_0
    move-exception p1

    .line 135
    new-instance p2, Lz4/g;

    .line 136
    .line 137
    invoke-direct {p2, p1}, Lz4/g;-><init>(Landroid/os/RemoteException;)V

    .line 138
    .line 139
    .line 140
    throw p2

    .line 141
    :cond_1
    const p1, 0x7f130133

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/map/MobileAccidentMapFragment;->G(I)V

    .line 145
    .line 146
    .line 147
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    .line 149
    .line 150
    return v0

    .line 151
    :cond_2
    const/4 p1, 0x0

    .line 152
    return p1
.end method
