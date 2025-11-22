.class public final Ls4/b9;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ls4/b9;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[Ls4/aa;

.field public final b:Ls4/j3;

.field public final c:Ls4/j3;

.field public final d:Ls4/j3;

.field public final e:Ljava/lang/String;

.field public final f:F

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final j:Z

.field public final k:I

.field public final l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls4/v9;

    invoke-direct {v0}, Ls4/v9;-><init>()V

    sput-object v0, Ls4/b9;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Ls4/aa;Ls4/j3;Ls4/j3;Ls4/j3;Ljava/lang/String;FLjava/lang/String;IZII)V
    .locals 0

    invoke-direct {p0}, Ls3/a;-><init>()V

    iput-object p1, p0, Ls4/b9;->a:[Ls4/aa;

    iput-object p2, p0, Ls4/b9;->b:Ls4/j3;

    iput-object p3, p0, Ls4/b9;->c:Ls4/j3;

    iput-object p4, p0, Ls4/b9;->d:Ls4/j3;

    iput-object p5, p0, Ls4/b9;->e:Ljava/lang/String;

    iput p6, p0, Ls4/b9;->f:F

    iput-object p7, p0, Ls4/b9;->g:Ljava/lang/String;

    iput p8, p0, Ls4/b9;->h:I

    iput-boolean p9, p0, Ls4/b9;->j:Z

    iput p10, p0, Ls4/b9;->k:I

    iput p11, p0, Ls4/b9;->l:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

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
    const/4 v1, 0x2

    .line 8
    iget-object v2, p0, Ls4/b9;->a:[Ls4/aa;

    .line 9
    .line 10
    invoke-static {p1, v1, v2, p2}, Ls3/c;->p(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    iget-object v2, p0, Ls4/b9;->b:Ls4/j3;

    .line 15
    .line 16
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    iget-object v2, p0, Ls4/b9;->c:Ls4/j3;

    .line 21
    .line 22
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    iget-object v2, p0, Ls4/b9;->d:Ls4/j3;

    .line 27
    .line 28
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x6

    .line 32
    iget-object v1, p0, Ls4/b9;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1, p2, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p2, 0x7

    .line 38
    iget v1, p0, Ls4/b9;->f:F

    .line 39
    .line 40
    invoke-static {p1, p2, v1}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 41
    .line 42
    .line 43
    const/16 p2, 0x8

    .line 44
    .line 45
    iget-object v1, p0, Ls4/b9;->g:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1, p2, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/16 p2, 0x9

    .line 51
    .line 52
    iget v1, p0, Ls4/b9;->h:I

    .line 53
    .line 54
    invoke-static {p1, p2, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 55
    .line 56
    .line 57
    const/16 p2, 0xa

    .line 58
    .line 59
    iget-boolean v1, p0, Ls4/b9;->j:Z

    .line 60
    .line 61
    invoke-static {p1, p2, v1}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 62
    .line 63
    .line 64
    const/16 p2, 0xb

    .line 65
    .line 66
    iget v1, p0, Ls4/b9;->k:I

    .line 67
    .line 68
    invoke-static {p1, p2, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 69
    .line 70
    .line 71
    const/16 p2, 0xc

    .line 72
    .line 73
    iget v1, p0, Ls4/b9;->l:I

    .line 74
    .line 75
    invoke-static {p1, p2, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v0}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
