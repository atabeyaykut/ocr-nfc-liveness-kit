.class public final Lc5/l6;
.super Lc5/l;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lc5/t6;


# direct methods
.method public constructor <init>(Lc5/t6;Lc5/z4;)V
    .locals 0

    iput-object p1, p0, Lc5/l6;->e:Lc5/t6;

    invoke-direct {p0, p2}, Lc5/l;-><init>(Lc5/z4;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc5/l6;->e:Lc5/t6;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v0, Lc5/i4;

    .line 6
    .line 7
    iget-object v0, v0, Lc5/i4;->j:Lc5/e3;

    .line 8
    .line 9
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "Tasks have been queued for a long time"

    .line 13
    .line 14
    iget-object v0, v0, Lc5/e3;->j:Lc5/c3;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
