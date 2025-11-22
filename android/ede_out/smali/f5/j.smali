.class public final Lf5/j;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lf5/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Lr3/j0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf5/k;

    invoke-direct {v0}, Lf5/k;-><init>()V

    sput-object v0, Lf5/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILr3/j0;)V
    .locals 0

    invoke-direct {p0}, Ls3/a;-><init>()V

    iput p1, p0, Lf5/j;->a:I

    iput-object p2, p0, Lf5/j;->b:Lr3/j0;

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
    const/4 v1, 0x1

    .line 8
    iget v2, p0, Lf5/j;->a:I

    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lf5/j;->b:Lr3/j0;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-static {p1, v2, v1, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
