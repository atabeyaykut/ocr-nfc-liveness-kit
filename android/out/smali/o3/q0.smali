.class public final Lo3/q0;
.super Lo3/m;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lo3/m$a;


# direct methods
.method public constructor <init>(Lo3/m$a;[Lm3/d;ZI)V
    .locals 0

    iput-object p1, p0, Lo3/q0;->d:Lo3/m$a;

    invoke-direct {p0, p2, p3, p4}, Lo3/m;-><init>([Lm3/d;ZI)V

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
    iget-object v0, p0, Lo3/q0;->d:Lo3/m$a;

    .line 2
    .line 3
    iget-object v0, v0, Lo3/m$a;->a:Lo3/k;

    .line 4
    .line 5
    check-cast p1, Ln3/a$e;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lo3/k;->e(Ln3/a$e;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
