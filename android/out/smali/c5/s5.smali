.class public final Lc5/s5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc5/f;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:Lc5/v5;


# direct methods
.method public constructor <init>(Lc5/v5;Lc5/f;IJZ)V
    .locals 0

    iput-object p1, p0, Lc5/s5;->e:Lc5/v5;

    iput-object p2, p0, Lc5/s5;->a:Lc5/f;

    iput p3, p0, Lc5/s5;->b:I

    iput-wide p4, p0, Lc5/s5;->c:J

    iput-boolean p6, p0, Lc5/s5;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lc5/s5;->e:Lc5/v5;

    iget-object v1, p0, Lc5/s5;->a:Lc5/f;

    invoke-virtual {v0, v1}, Lc5/v5;->u(Lc5/f;)V

    iget-object v2, p0, Lc5/s5;->e:Lc5/v5;

    iget-object v3, p0, Lc5/s5;->a:Lc5/f;

    iget v4, p0, Lc5/s5;->b:I

    iget-wide v5, p0, Lc5/s5;->c:J

    const/4 v7, 0x0

    iget-boolean v8, p0, Lc5/s5;->d:Z

    invoke-static/range {v2 .. v8}, Lc5/v5;->B(Lc5/v5;Lc5/f;IJZZ)V

    return-void
.end method
