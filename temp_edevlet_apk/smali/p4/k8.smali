.class public final Lp4/k8;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lp4/k8;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp4/yb;

    invoke-direct {v0}, Lp4/yb;-><init>()V

    sput-object v0, Lp4/k8;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ls3/a;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ls3/a;-><init>()V

    iput-wide p1, p0, Lp4/k8;->a:D

    iput-wide p3, p0, Lp4/k8;->b:D

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

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
    const/4 v0, 0x2

    .line 8
    iget-wide v1, p0, Lp4/k8;->a:D

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Ls3/c;->f(Landroid/os/Parcel;ID)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    iget-wide v1, p0, Lp4/k8;->b:D

    .line 15
    .line 16
    invoke-static {p1, v0, v1, v2}, Ls3/c;->f(Landroid/os/Parcel;ID)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
