.class public final Lc5/z6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:J

.field public final b:J

.field public final synthetic c:Lc5/a7;


# direct methods
.method public constructor <init>(Lc5/a7;JJ)V
    .locals 0

    iput-object p1, p0, Lc5/z6;->c:Lc5/a7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lc5/z6;->a:J

    iput-wide p4, p0, Lc5/z6;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc5/z6;->c:Lc5/a7;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/a7;->b:Lc5/e7;

    .line 4
    .line 5
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 6
    .line 7
    check-cast v0, Lc5/i4;

    .line 8
    .line 9
    iget-object v0, v0, Lc5/i4;->k:Lc5/h4;

    .line 10
    .line 11
    invoke-static {v0}, Lc5/i4;->e(Lc5/y4;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ll3/k;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v1, v2, p0}, Ll3/k;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
