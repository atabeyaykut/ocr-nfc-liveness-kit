.class public final Lc5/c6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lc5/b6;

.field public final synthetic c:Lc5/b6;

.field public final synthetic d:J

.field public final synthetic e:Lc5/f6;


# direct methods
.method public constructor <init>(Lc5/f6;Landroid/os/Bundle;Lc5/b6;Lc5/b6;J)V
    .locals 0

    iput-object p1, p0, Lc5/c6;->e:Lc5/f6;

    iput-object p2, p0, Lc5/c6;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lc5/c6;->b:Lc5/b6;

    iput-object p4, p0, Lc5/c6;->c:Lc5/b6;

    iput-wide p5, p0, Lc5/c6;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v1, p0, Lc5/c6;->b:Lc5/b6;

    .line 2
    .line 3
    iget-object v2, p0, Lc5/c6;->c:Lc5/b6;

    .line 4
    .line 5
    iget-wide v3, p0, Lc5/c6;->d:J

    .line 6
    .line 7
    iget-object v8, p0, Lc5/c6;->a:Landroid/os/Bundle;

    .line 8
    .line 9
    const-string v0, "screen_name"

    .line 10
    .line 11
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "screen_class"

    .line 15
    .line 16
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v11, 0x1

    .line 20
    iget-object v0, p0, Lc5/c6;->e:Lc5/f6;

    .line 21
    .line 22
    iget-object v5, v0, Lc5/x4;->a:Lc5/z4;

    .line 23
    .line 24
    check-cast v5, Lc5/i4;

    .line 25
    .line 26
    iget-object v5, v5, Lc5/i4;->m:Lc5/v7;

    .line 27
    .line 28
    invoke-static {v5}, Lc5/i4;->c(Lc5/y4;)V

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    const-string v7, "screen_view"

    .line 33
    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v10, 0x0

    .line 36
    invoke-virtual/range {v5 .. v10}, Lc5/v7;->o0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    move v5, v11

    .line 41
    invoke-virtual/range {v0 .. v6}, Lc5/f6;->h(Lc5/b6;Lc5/b6;JZLandroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
