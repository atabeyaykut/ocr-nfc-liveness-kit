.class public final Lc5/e6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc5/b6;

.field public final synthetic b:J

.field public final synthetic c:Lc5/f6;


# direct methods
.method public constructor <init>(Lc5/f6;Lc5/b6;J)V
    .locals 0

    iput-object p1, p0, Lc5/e6;->c:Lc5/f6;

    iput-object p2, p0, Lc5/e6;->a:Lc5/b6;

    iput-wide p3, p0, Lc5/e6;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc5/e6;->a:Lc5/b6;

    .line 2
    .line 3
    iget-wide v1, p0, Lc5/e6;->b:J

    .line 4
    .line 5
    iget-object v3, p0, Lc5/e6;->c:Lc5/f6;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-virtual {v3, v0, v4, v1, v2}, Lc5/f6;->n(Lc5/b6;ZJ)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, v3, Lc5/f6;->e:Lc5/b6;

    .line 13
    .line 14
    iget-object v1, v3, Lc5/x4;->a:Lc5/z4;

    .line 15
    .line 16
    check-cast v1, Lc5/i4;

    .line 17
    .line 18
    invoke-virtual {v1}, Lc5/i4;->s()Lc5/t6;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lc5/t2;->b()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lc5/r3;->c()V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lc5/p5;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-direct {v2, v1, v0, v3}, Lc5/p5;-><init>(Lc5/r3;Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lc5/t6;->t(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
