.class public Lc5/t2;
.super Lc5/x4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lc5/i4;)V
    .locals 0

    invoke-direct {p0, p1}, Lc5/x4;-><init>(Lc5/i4;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    check-cast v0, Lc5/i4;

    .line 4
    .line 5
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 6
    .line 7
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lc5/h4;->b()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
