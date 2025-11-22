.class public final Lp4/n4;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lp4/n4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lp4/m3;

.field public final g:Lp4/m3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp4/ub;

    invoke-direct {v0}, Lp4/ub;-><init>()V

    sput-object v0, Lp4/n4;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ls3/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp4/m3;Lp4/m3;)V
    .locals 0

    invoke-direct {p0}, Ls3/a;-><init>()V

    iput-object p1, p0, Lp4/n4;->a:Ljava/lang/String;

    iput-object p2, p0, Lp4/n4;->b:Ljava/lang/String;

    iput-object p3, p0, Lp4/n4;->c:Ljava/lang/String;

    iput-object p4, p0, Lp4/n4;->d:Ljava/lang/String;

    iput-object p5, p0, Lp4/n4;->e:Ljava/lang/String;

    iput-object p6, p0, Lp4/n4;->f:Lp4/m3;

    iput-object p7, p0, Lp4/n4;->g:Lp4/m3;

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
    iget-object v2, p0, Lp4/n4;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    iget-object v2, p0, Lp4/n4;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    iget-object v2, p0, Lp4/n4;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    iget-object v2, p0, Lp4/n4;->d:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    iget-object v2, p0, Lp4/n4;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x7

    .line 38
    iget-object v2, p0, Lp4/n4;->f:Lp4/m3;

    .line 39
    .line 40
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    iget-object v2, p0, Lp4/n4;->g:Lp4/m3;

    .line 46
    .line 47
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
