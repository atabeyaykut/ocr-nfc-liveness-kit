.class public final Lh6/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lh6/t;


# direct methods
.method public constructor <init>(Lh6/t;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh6/r;->c:Lh6/t;

    iput-wide p2, p0, Lh6/r;->a:J

    iput-object p4, p0, Lh6/r;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh6/r;->c:Lh6/t;

    .line 2
    .line 3
    iget-object v1, v0, Lh6/t;->l:Lh6/b0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Lh6/b0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Lh6/t;->h:Li6/b;

    .line 21
    .line 22
    iget-object v0, v0, Li6/b;->b:Li6/a;

    .line 23
    .line 24
    iget-wide v1, p0, Lh6/r;->a:J

    .line 25
    .line 26
    iget-object v3, p0, Lh6/r;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v0, v1, v2, v3}, Li6/a;->c(JLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    return-object v0
.end method
