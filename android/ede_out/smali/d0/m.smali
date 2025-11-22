.class public final Ld0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/l$n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ld0/l;


# direct methods
.method public constructor <init>(Ld0/l;II)V
    .locals 0

    iput-object p1, p0, Ld0/m;->c:Ld0/l;

    iput p2, p0, Ld0/m;->a:I

    iput p3, p0, Ld0/m;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ld0/m;->c:Ld0/l;

    .line 2
    .line 3
    iget-object v1, v0, Ld0/l;->b:Ld0/f;

    .line 4
    .line 5
    iget v2, p0, Ld0/m;->a:I

    .line 6
    .line 7
    iget v3, p0, Ld0/m;->b:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Ld0/l;->h:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v4, Ld0/m;

    .line 14
    .line 15
    invoke-direct {v4, v0, v2, v3}, Ld0/m;-><init>(Ld0/l;II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    int-to-float v1, v2

    .line 23
    int-to-float v2, v3

    .line 24
    const v3, 0x3f7d70a4    # 0.99f

    .line 25
    .line 26
    .line 27
    add-float/2addr v2, v3

    .line 28
    iget-object v0, v0, Ld0/l;->c:Lp0/d;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lp0/d;->i(FF)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method
