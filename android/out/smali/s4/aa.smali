.class public final Ls4/aa;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ls4/aa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[Ls4/w9;

.field public final b:Ls4/j3;

.field public final c:Ls4/j3;

.field public final d:Ljava/lang/String;

.field public final e:F

.field public final f:Ljava/lang/String;

.field public final g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls4/ba;

    invoke-direct {v0}, Ls4/ba;-><init>()V

    sput-object v0, Ls4/aa;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Ls4/w9;Ls4/j3;Ls4/j3;Ljava/lang/String;FLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ls3/a;-><init>()V

    iput-object p1, p0, Ls4/aa;->a:[Ls4/w9;

    iput-object p2, p0, Ls4/aa;->b:Ls4/j3;

    iput-object p3, p0, Ls4/aa;->c:Ls4/j3;

    iput-object p4, p0, Ls4/aa;->d:Ljava/lang/String;

    iput p5, p0, Ls4/aa;->e:F

    iput-object p6, p0, Ls4/aa;->f:Ljava/lang/String;

    iput-boolean p7, p0, Ls4/aa;->g:Z

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
    iget-object v2, p0, Ls4/aa;->a:[Ls4/w9;

    .line 9
    .line 10
    invoke-static {p1, v1, v2, p2}, Ls3/c;->p(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    iget-object v2, p0, Ls4/aa;->b:Ls4/j3;

    .line 15
    .line 16
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    iget-object v2, p0, Ls4/aa;->c:Ls4/j3;

    .line 21
    .line 22
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x5

    .line 26
    iget-object v1, p0, Ls4/aa;->d:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1, p2, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x6

    .line 32
    iget v1, p0, Ls4/aa;->e:F

    .line 33
    .line 34
    invoke-static {p1, p2, v1}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 35
    .line 36
    .line 37
    const/4 p2, 0x7

    .line 38
    iget-object v1, p0, Ls4/aa;->f:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1, p2, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/16 p2, 0x8

    .line 44
    .line 45
    iget-boolean v1, p0, Ls4/aa;->g:Z

    .line 46
    .line 47
    invoke-static {p1, p2, v1}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
