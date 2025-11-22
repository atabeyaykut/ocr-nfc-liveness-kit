.class public abstract Lg4/j;
.super Lo3/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo3/m<",
        "Lg4/f;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lh5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh5/l<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo3/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ln3/a$e;Lh5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lg4/f;

    .line 2
    .line 3
    iput-object p2, p0, Lg4/j;->d:Lh5/l;

    .line 4
    .line 5
    invoke-virtual {p1}, Lr3/c;->w()Landroid/os/IInterface;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lg4/c;

    .line 10
    .line 11
    move-object p2, p0

    .line 12
    check-cast p2, Lg4/h;

    .line 13
    .line 14
    new-instance v0, Lg4/i;

    .line 15
    .line 16
    invoke-direct {v0, p2}, Lg4/i;-><init>(Lg4/h;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Lg4/c;->a0(Lg4/i;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
