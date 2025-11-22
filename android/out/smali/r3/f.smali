.class public final Lr3/f;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr3/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lr3/t;

.field public final b:Z

.field public final c:Z

.field public final d:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:I

.field public final f:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr3/d1;

    invoke-direct {v0}, Lr3/d1;-><init>()V

    sput-object v0, Lr3/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lr3/t;ZZ[II[I)V
    .locals 0
    .param p1    # Lr3/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ls3/a;-><init>()V

    iput-object p1, p0, Lr3/f;->a:Lr3/t;

    iput-boolean p2, p0, Lr3/f;->b:Z

    iput-boolean p3, p0, Lr3/f;->c:Z

    iput-object p4, p0, Lr3/f;->d:[I

    iput p5, p0, Lr3/f;->e:I

    iput-object p6, p0, Lr3/f;->f:[I

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
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lr3/f;->a:Lr3/t;

    .line 9
    .line 10
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 11
    .line 12
    .line 13
    const/4 p2, 0x2

    .line 14
    iget-boolean v1, p0, Lr3/f;->b:Z

    .line 15
    .line 16
    invoke-static {p1, p2, v1}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x3

    .line 20
    iget-boolean v1, p0, Lr3/f;->c:Z

    .line 21
    .line 22
    invoke-static {p1, p2, v1}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x4

    .line 26
    iget-object v1, p0, Lr3/f;->d:[I

    .line 27
    .line 28
    invoke-static {p1, p2, v1}, Ls3/c;->k(Landroid/os/Parcel;I[I)V

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x5

    .line 32
    iget v1, p0, Lr3/f;->e:I

    .line 33
    .line 34
    invoke-static {p1, p2, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 35
    .line 36
    .line 37
    const/4 p2, 0x6

    .line 38
    iget-object v1, p0, Lr3/f;->f:[I

    .line 39
    .line 40
    invoke-static {p1, p2, v1}, Ls3/c;->k(Landroid/os/Parcel;I[I)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
