.class public Lz4/e;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz4/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/google/android/gms/maps/model/LatLng;

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Lz4/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:F

.field public final f:F

.field public g:Z

.field public final h:Z

.field public final j:Z

.field public final k:F

.field public final l:F

.field public final m:F

.field public final n:F

.field public final p:F

.field public final q:I

.field public final r:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public s:I

.field public final t:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final v:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz4/l;

    invoke-direct {v0}, Lz4/l;-><init>()V

    sput-object v0, Lz4/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ls3/a;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lz4/e;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lz4/e;->f:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lz4/e;->h:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lz4/e;->j:Z

    const/4 v3, 0x0

    iput v3, p0, Lz4/e;->k:F

    iput v0, p0, Lz4/e;->l:F

    iput v3, p0, Lz4/e;->m:F

    iput v1, p0, Lz4/e;->n:F

    iput v2, p0, Lz4/e;->q:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFFFILandroid/os/IBinder;ILjava/lang/String;F)V
    .locals 5
    .param p4    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ls3/a;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lz4/e;->e:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lz4/e;->f:F

    const/4 v3, 0x1

    iput-boolean v3, v0, Lz4/e;->h:Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lz4/e;->j:Z

    const/4 v4, 0x0

    iput v4, v0, Lz4/e;->k:F

    iput v1, v0, Lz4/e;->l:F

    iput v4, v0, Lz4/e;->m:F

    iput v2, v0, Lz4/e;->n:F

    iput v3, v0, Lz4/e;->q:I

    move-object v1, p1

    iput-object v1, v0, Lz4/e;->a:Lcom/google/android/gms/maps/model/LatLng;

    move-object v1, p2

    iput-object v1, v0, Lz4/e;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lz4/e;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p4, :cond_0

    iput-object v1, v0, Lz4/e;->d:Lz4/a;

    goto :goto_0

    :cond_0
    new-instance v2, Lz4/a;

    invoke-static {p4}, Lz3/b$a;->x0(Landroid/os/IBinder;)Lz3/b;

    move-result-object v3

    invoke-direct {v2, v3}, Lz4/a;-><init>(Lz3/b;)V

    iput-object v2, v0, Lz4/e;->d:Lz4/a;

    :goto_0
    move v2, p5

    iput v2, v0, Lz4/e;->e:F

    move v2, p6

    iput v2, v0, Lz4/e;->f:F

    move v2, p7

    iput-boolean v2, v0, Lz4/e;->g:Z

    move v2, p8

    iput-boolean v2, v0, Lz4/e;->h:Z

    move v2, p9

    iput-boolean v2, v0, Lz4/e;->j:Z

    move v2, p10

    iput v2, v0, Lz4/e;->k:F

    move/from16 v2, p11

    iput v2, v0, Lz4/e;->l:F

    move/from16 v2, p12

    iput v2, v0, Lz4/e;->m:F

    move/from16 v2, p13

    iput v2, v0, Lz4/e;->n:F

    move/from16 v2, p14

    iput v2, v0, Lz4/e;->p:F

    move/from16 v2, p17

    iput v2, v0, Lz4/e;->s:I

    move/from16 v2, p15

    iput v2, v0, Lz4/e;->q:I

    invoke-static/range {p16 .. p16}, Lz3/b$a;->x0(Landroid/os/IBinder;)Lz3/b;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lz3/d;->y0(Lz3/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_1
    iput-object v1, v0, Lz4/e;->r:Landroid/view/View;

    move-object/from16 v1, p18

    iput-object v1, v0, Lz4/e;->t:Ljava/lang/String;

    move/from16 v1, p19

    iput v1, v0, Lz4/e;->v:F

    return-void
.end method


# virtual methods
.method public final E(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lz4/e;->a:Lcom/google/android/gms/maps/model/LatLng;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "latlng cannot be null - a position is required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, v0}, Ls3/c;->r(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lz4/e;->a:Lcom/google/android/gms/maps/model/LatLng;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {p1, v2, v1, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 11
    .line 12
    .line 13
    const/4 p2, 0x3

    .line 14
    iget-object v1, p0, Lz4/e;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, p2, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x4

    .line 20
    iget-object v1, p0, Lz4/e;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1, p2, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lz4/e;->d:Lz4/a;

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p2, p2, Lz4/a;->a:Lz3/b;

    .line 32
    .line 33
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    :goto_0
    const/4 v1, 0x5

    .line 38
    invoke-static {p1, v1, p2}, Ls3/c;->i(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    .line 39
    .line 40
    .line 41
    const/4 p2, 0x6

    .line 42
    iget v1, p0, Lz4/e;->e:F

    .line 43
    .line 44
    invoke-static {p1, p2, v1}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 45
    .line 46
    .line 47
    const/4 p2, 0x7

    .line 48
    iget v1, p0, Lz4/e;->f:F

    .line 49
    .line 50
    invoke-static {p1, p2, v1}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 51
    .line 52
    .line 53
    iget-boolean p2, p0, Lz4/e;->g:Z

    .line 54
    .line 55
    const/16 v1, 0x8

    .line 56
    .line 57
    invoke-static {p1, v1, p2}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 58
    .line 59
    .line 60
    const/16 p2, 0x9

    .line 61
    .line 62
    iget-boolean v1, p0, Lz4/e;->h:Z

    .line 63
    .line 64
    invoke-static {p1, p2, v1}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 65
    .line 66
    .line 67
    const/16 p2, 0xa

    .line 68
    .line 69
    iget-boolean v1, p0, Lz4/e;->j:Z

    .line 70
    .line 71
    invoke-static {p1, p2, v1}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 72
    .line 73
    .line 74
    const/16 p2, 0xb

    .line 75
    .line 76
    iget v1, p0, Lz4/e;->k:F

    .line 77
    .line 78
    invoke-static {p1, p2, v1}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 79
    .line 80
    .line 81
    const/16 p2, 0xc

    .line 82
    .line 83
    iget v1, p0, Lz4/e;->l:F

    .line 84
    .line 85
    invoke-static {p1, p2, v1}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 86
    .line 87
    .line 88
    const/16 p2, 0xd

    .line 89
    .line 90
    iget v1, p0, Lz4/e;->m:F

    .line 91
    .line 92
    invoke-static {p1, p2, v1}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 93
    .line 94
    .line 95
    const/16 p2, 0xe

    .line 96
    .line 97
    iget v1, p0, Lz4/e;->n:F

    .line 98
    .line 99
    invoke-static {p1, p2, v1}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 100
    .line 101
    .line 102
    const/16 p2, 0xf

    .line 103
    .line 104
    iget v1, p0, Lz4/e;->p:F

    .line 105
    .line 106
    invoke-static {p1, p2, v1}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 107
    .line 108
    .line 109
    const/16 p2, 0x11

    .line 110
    .line 111
    iget v1, p0, Lz4/e;->q:I

    .line 112
    .line 113
    invoke-static {p1, p2, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 114
    .line 115
    .line 116
    new-instance p2, Lz3/d;

    .line 117
    .line 118
    iget-object v1, p0, Lz4/e;->r:Landroid/view/View;

    .line 119
    .line 120
    invoke-direct {p2, v1}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    const/16 v1, 0x12

    .line 124
    .line 125
    invoke-static {p1, v1, p2}, Ls3/c;->i(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    .line 126
    .line 127
    .line 128
    const/16 p2, 0x13

    .line 129
    .line 130
    iget v1, p0, Lz4/e;->s:I

    .line 131
    .line 132
    invoke-static {p1, p2, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 133
    .line 134
    .line 135
    const/16 p2, 0x14

    .line 136
    .line 137
    iget-object v1, p0, Lz4/e;->t:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {p1, p2, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const/16 p2, 0x15

    .line 143
    .line 144
    iget v1, p0, Lz4/e;->v:F

    .line 145
    .line 146
    invoke-static {p1, p2, v1}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 147
    .line 148
    .line 149
    invoke-static {p1, v0}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 150
    .line 151
    .line 152
    return-void
.end method
