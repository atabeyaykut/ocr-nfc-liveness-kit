.class public Lcom/google/android/gms/vision/face/internal/client/FaceParcel;
.super Ls3/a;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    value = "wrapper.cc"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/vision/face/internal/client/FaceParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final j:F

.field public final k:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public final l:F

.field public final m:F

.field public final n:F

.field public final p:[Lk5/a;

.field public final q:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk5/c;

    invoke-direct {v0}, Lk5/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIFFFFFFF[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;FFF[Lk5/a;F)V
    .locals 0

    invoke-direct {p0}, Ls3/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->a:I

    iput p2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->b:I

    iput p3, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->c:F

    iput p4, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->d:F

    iput p5, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->e:F

    iput p6, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->f:F

    iput p7, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->g:F

    iput p8, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->h:F

    iput p9, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->j:F

    iput-object p10, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->k:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    iput p11, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->l:F

    iput p12, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->m:F

    iput p13, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->n:F

    iput-object p14, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->p:[Lk5/a;

    iput p15, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->q:F

    return-void
.end method

.method public constructor <init>(IIFFFFFF[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;FFF)V
    .locals 16
    .param p9    # [Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
        value = "wrapper.cc"
    .end annotation

    const/4 v9, 0x0

    const/4 v0, 0x0

    new-array v14, v0, [Lk5/a;

    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;-><init>(IIFFFFFFF[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;FFF[Lk5/a;F)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
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
    const/4 v1, 0x1

    .line 8
    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->a:I

    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->b:I

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->c:F

    .line 21
    .line 22
    invoke-static {p1, v1, v2}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->d:F

    .line 27
    .line 28
    invoke-static {p1, v1, v2}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->e:F

    .line 33
    .line 34
    invoke-static {p1, v1, v2}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x6

    .line 38
    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->f:F

    .line 39
    .line 40
    invoke-static {p1, v1, v2}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x7

    .line 44
    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->g:F

    .line 45
    .line 46
    invoke-static {p1, v1, v2}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 47
    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->h:F

    .line 52
    .line 53
    invoke-static {p1, v1, v2}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x9

    .line 57
    .line 58
    iget-object v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->k:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    .line 59
    .line 60
    invoke-static {p1, v1, v2, p2}, Ls3/c;->p(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 61
    .line 62
    .line 63
    const/16 v1, 0xa

    .line 64
    .line 65
    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->l:F

    .line 66
    .line 67
    invoke-static {p1, v1, v2}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 68
    .line 69
    .line 70
    const/16 v1, 0xb

    .line 71
    .line 72
    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->m:F

    .line 73
    .line 74
    invoke-static {p1, v1, v2}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 75
    .line 76
    .line 77
    const/16 v1, 0xc

    .line 78
    .line 79
    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->n:F

    .line 80
    .line 81
    invoke-static {p1, v1, v2}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 82
    .line 83
    .line 84
    const/16 v1, 0xd

    .line 85
    .line 86
    iget-object v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->p:[Lk5/a;

    .line 87
    .line 88
    invoke-static {p1, v1, v2, p2}, Ls3/c;->p(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 89
    .line 90
    .line 91
    const/16 p2, 0xe

    .line 92
    .line 93
    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->j:F

    .line 94
    .line 95
    invoke-static {p1, p2, v1}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 96
    .line 97
    .line 98
    const/16 p2, 0xf

    .line 99
    .line 100
    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->q:F

    .line 101
    .line 102
    invoke-static {p1, p2, v1}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v0}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 106
    .line 107
    .line 108
    return-void
.end method
