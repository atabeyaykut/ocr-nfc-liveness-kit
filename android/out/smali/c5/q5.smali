.class public final Lc5/q5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc5/f;

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:Z

.field public final synthetic f:Lc5/v5;


# direct methods
.method public constructor <init>(Lc5/v5;Lc5/f;JIJZ)V
    .locals 0

    iput-object p1, p0, Lc5/q5;->f:Lc5/v5;

    iput-object p2, p0, Lc5/q5;->a:Lc5/f;

    iput-wide p3, p0, Lc5/q5;->b:J

    iput p5, p0, Lc5/q5;->c:I

    iput-wide p6, p0, Lc5/q5;->d:J

    iput-boolean p8, p0, Lc5/q5;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lc5/q5;->a:Lc5/f;

    iget-object v1, p0, Lc5/q5;->f:Lc5/v5;

    invoke-virtual {v1, v0}, Lc5/v5;->u(Lc5/f;)V

    iget-wide v2, p0, Lc5/q5;->b:J

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lc5/v5;->q(JZ)V

    iget-object v4, p0, Lc5/q5;->f:Lc5/v5;

    iget-object v5, p0, Lc5/q5;->a:Lc5/f;

    iget v6, p0, Lc5/q5;->c:I

    iget-wide v7, p0, Lc5/q5;->d:J

    const/4 v9, 0x1

    iget-boolean v10, p0, Lc5/q5;->e:Z

    invoke-static/range {v4 .. v10}, Lc5/v5;->B(Lc5/v5;Lc5/f;IJZZ)V

    return-void
.end method
