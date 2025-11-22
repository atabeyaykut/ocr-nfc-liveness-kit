.class public final Lp4/e;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lp4/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp4/f;

    invoke-direct {v0}, Lp4/f;-><init>()V

    sput-object v0, Lp4/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ls3/a;-><init>()V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ls3/a;-><init>()V

    iput p1, p0, Lp4/e;->a:I

    iput-boolean p2, p0, Lp4/e;->b:Z

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
    const/4 v0, 0x2

    .line 8
    iget v1, p0, Lp4/e;->a:I

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    iget-boolean v1, p0, Lp4/e;->b:Z

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
