.class public final Lo3/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/c$c;
.implements Lo3/o0;


# instance fields
.field public final a:Ln3/a$e;

.field public final b:Lo3/a;

.field public c:Lr3/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Z

.field public final synthetic f:Lo3/d;


# direct methods
.method public constructor <init>(Lo3/d;Ln3/a$e;Lo3/a;)V
    .locals 0

    iput-object p1, p0, Lo3/d0;->f:Lo3/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lo3/d0;->c:Lr3/k;

    iput-object p1, p0, Lo3/d0;->d:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo3/d0;->e:Z

    iput-object p2, p0, Lo3/d0;->a:Ln3/a$e;

    iput-object p3, p0, Lo3/d0;->b:Lo3/a;

    return-void
.end method


# virtual methods
.method public final a(Lm3/b;)V
    .locals 2
    .param p1    # Lm3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lo3/d0;->f:Lo3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lo3/d;->n:Lh4/i;

    .line 4
    .line 5
    new-instance v1, Lo3/c0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lo3/c0;-><init>(Lo3/d0;Lm3/b;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b(Lm3/b;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/d0;->f:Lo3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lo3/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    iget-object v1, p0, Lo3/d0;->b:Lo3/a;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lo3/a0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Lo3/a0;->m:Lo3/d;

    .line 16
    .line 17
    iget-object v1, v1, Lo3/d;->n:Lh4/i;

    .line 18
    .line 19
    invoke-static {v1}, Lr3/r;->d(Lh4/i;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lo3/a0;->b:Ln3/a$e;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v5, "onSignInFailed for "

    .line 39
    .line 40
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, " with "

    .line 47
    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v1, v2}, Ln3/a$e;->d(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, p1, v1}, Lo3/a0;->m(Lm3/b;Ljava/lang/RuntimeException;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method
