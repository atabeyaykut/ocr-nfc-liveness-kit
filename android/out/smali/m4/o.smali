.class public final Lm4/o;
.super Lw4/j;
.source "SourceFile"


# instance fields
.field public final b:Lm4/g;


# direct methods
.method public constructor <init>(Lm4/g;)V
    .locals 0

    invoke-direct {p0}, Lw4/j;-><init>()V

    iput-object p1, p0, Lm4/o;->b:Lm4/g;

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm4/o;->b:Lm4/g;

    .line 2
    .line 3
    iget-object v0, v0, Lm4/g;->a:Lo3/h;

    .line 4
    .line 5
    new-instance v1, Lm4/n;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lm4/n;-><init>(Lm4/o;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v2, Lo3/h0;

    .line 14
    .line 15
    invoke-direct {v2, v0, v1}, Lo3/h0;-><init>(Lo3/h;Lo3/h$b;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lo3/h;->a:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
