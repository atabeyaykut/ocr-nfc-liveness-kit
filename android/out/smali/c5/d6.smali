.class public final Lc5/d6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc5/b6;

.field public final synthetic b:Lc5/b6;

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:Lc5/f6;


# direct methods
.method public constructor <init>(Lc5/f6;Lc5/b6;Lc5/b6;JZ)V
    .locals 0

    iput-object p1, p0, Lc5/d6;->e:Lc5/f6;

    iput-object p2, p0, Lc5/d6;->a:Lc5/b6;

    iput-object p3, p0, Lc5/d6;->b:Lc5/b6;

    iput-wide p4, p0, Lc5/d6;->c:J

    iput-boolean p6, p0, Lc5/d6;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lc5/d6;->e:Lc5/f6;

    .line 2
    .line 3
    iget-object v1, p0, Lc5/d6;->a:Lc5/b6;

    .line 4
    .line 5
    iget-object v2, p0, Lc5/d6;->b:Lc5/b6;

    .line 6
    .line 7
    iget-wide v3, p0, Lc5/d6;->c:J

    .line 8
    .line 9
    iget-boolean v5, p0, Lc5/d6;->d:Z

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    invoke-virtual/range {v0 .. v6}, Lc5/f6;->h(Lc5/b6;Lc5/b6;JZLandroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
