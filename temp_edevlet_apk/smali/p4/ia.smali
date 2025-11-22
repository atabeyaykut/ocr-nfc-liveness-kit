.class public final Lp4/ia;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lp4/ia;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp4/xa;

    invoke-direct {v0}, Lp4/xa;-><init>()V

    sput-object v0, Lp4/ia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIZII)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ls3/a;-><init>()V

    iput p2, p0, Lp4/ia;->a:I

    iput p3, p0, Lp4/ia;->b:I

    iput p4, p0, Lp4/ia;->c:I

    iput p5, p0, Lp4/ia;->d:I

    iput p7, p0, Lp4/ia;->e:I

    iput p8, p0, Lp4/ia;->f:I

    iput-boolean p6, p0, Lp4/ia;->g:Z

    iput-object p1, p0, Lp4/ia;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const/16 p2, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, p2}, Ls3/c;->r(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x1

    .line 8
    iget v1, p0, Lp4/ia;->a:I

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    iget v1, p0, Lp4/ia;->b:I

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    iget v1, p0, Lp4/ia;->c:I

    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    iget v1, p0, Lp4/ia;->d:I

    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x5

    .line 32
    iget v1, p0, Lp4/ia;->e:I

    .line 33
    .line 34
    invoke-static {p1, v0, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x6

    .line 38
    iget v1, p0, Lp4/ia;->f:I

    .line 39
    .line 40
    invoke-static {p1, v0, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x7

    .line 44
    iget-boolean v1, p0, Lp4/ia;->g:Z

    .line 45
    .line 46
    invoke-static {p1, v0, v1}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lp4/ia;->h:Ljava/lang/String;

    .line 50
    .line 51
    const/16 v1, 0x8

    .line 52
    .line 53
    invoke-static {p1, v1, v0}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
