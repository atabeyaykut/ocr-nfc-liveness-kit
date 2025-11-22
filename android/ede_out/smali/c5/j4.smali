.class public final Lc5/j4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc5/b;

.field public final synthetic b:Lc5/y7;

.field public final synthetic c:Lc5/w4;


# direct methods
.method public constructor <init>(Lc5/w4;Lc5/b;Lc5/y7;)V
    .locals 0

    iput-object p1, p0, Lc5/j4;->c:Lc5/w4;

    iput-object p2, p0, Lc5/j4;->a:Lc5/b;

    iput-object p3, p0, Lc5/j4;->b:Lc5/y7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc5/j4;->c:Lc5/w4;

    .line 2
    .line 3
    iget-object v1, v0, Lc5/w4;->a:Lc5/o7;

    .line 4
    .line 5
    invoke-virtual {v1}, Lc5/o7;->a()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lc5/j4;->a:Lc5/b;

    .line 9
    .line 10
    iget-object v2, v1, Lc5/b;->c:Lc5/r7;

    .line 11
    .line 12
    invoke-virtual {v2}, Lc5/r7;->E()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lc5/j4;->b:Lc5/y7;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    iget-object v0, v0, Lc5/w4;->a:Lc5/o7;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v3}, Lc5/o7;->n(Lc5/b;Lc5/y7;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, v0, Lc5/w4;->a:Lc5/o7;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v3}, Lc5/o7;->q(Lc5/b;Lc5/y7;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
