.class public final Lz4/c;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz4/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:D

.field public final c:F

.field public d:I

.field public final e:I

.field public final f:F

.field public final g:Z

.field public h:Z

.field public final j:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz4/i;

    invoke-direct {v0}, Lz4/i;-><init>()V

    sput-object v0, Lz4/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ls3/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz4/c;->a:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lz4/c;->b:D

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lz4/c;->c:F

    const/high16 v1, -0x1000000

    iput v1, p0, Lz4/c;->d:I

    const/4 v1, 0x0

    iput v1, p0, Lz4/c;->e:I

    const/4 v2, 0x0

    iput v2, p0, Lz4/c;->f:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lz4/c;->g:Z

    iput-boolean v1, p0, Lz4/c;->h:Z

    iput-object v0, p0, Lz4/c;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;DFIIFZZLjava/util/ArrayList;)V
    .locals 0
    .param p10    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ls3/a;-><init>()V

    iput-object p1, p0, Lz4/c;->a:Lcom/google/android/gms/maps/model/LatLng;

    iput-wide p2, p0, Lz4/c;->b:D

    iput p4, p0, Lz4/c;->c:F

    iput p5, p0, Lz4/c;->d:I

    iput p6, p0, Lz4/c;->e:I

    iput p7, p0, Lz4/c;->f:F

    iput-boolean p8, p0, Lz4/c;->g:Z

    iput-boolean p9, p0, Lz4/c;->h:Z

    iput-object p10, p0, Lz4/c;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
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
    iget-object v1, p0, Lz4/c;->a:Lcom/google/android/gms/maps/model/LatLng;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {p1, v2, v1, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 11
    .line 12
    .line 13
    iget-wide v1, p0, Lz4/c;->b:D

    .line 14
    .line 15
    const/4 p2, 0x3

    .line 16
    invoke-static {p1, p2, v1, v2}, Ls3/c;->f(Landroid/os/Parcel;ID)V

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x4

    .line 20
    iget v1, p0, Lz4/c;->c:F

    .line 21
    .line 22
    invoke-static {p1, p2, v1}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 23
    .line 24
    .line 25
    iget p2, p0, Lz4/c;->d:I

    .line 26
    .line 27
    const/4 v1, 0x5

    .line 28
    invoke-static {p1, v1, p2}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x6

    .line 32
    iget v1, p0, Lz4/c;->e:I

    .line 33
    .line 34
    invoke-static {p1, p2, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 35
    .line 36
    .line 37
    const/4 p2, 0x7

    .line 38
    iget v1, p0, Lz4/c;->f:F

    .line 39
    .line 40
    invoke-static {p1, p2, v1}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 41
    .line 42
    .line 43
    const/16 p2, 0x8

    .line 44
    .line 45
    iget-boolean v1, p0, Lz4/c;->g:Z

    .line 46
    .line 47
    invoke-static {p1, p2, v1}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 48
    .line 49
    .line 50
    iget-boolean p2, p0, Lz4/c;->h:Z

    .line 51
    .line 52
    const/16 v1, 0x9

    .line 53
    .line 54
    invoke-static {p1, v1, p2}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 55
    .line 56
    .line 57
    const/16 p2, 0xa

    .line 58
    .line 59
    iget-object v1, p0, Lz4/c;->j:Ljava/util/List;

    .line 60
    .line 61
    invoke-static {p1, p2, v1}, Ls3/c;->q(Landroid/os/Parcel;ILjava/util/List;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v0}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
