.class public final Le/j;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Lp/h;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "coil.RealImageLoader$executeMain$result$1"
    f = "RealImageLoader.kt"
    l = {
        0xb7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lp/g;

.field public final synthetic c:Le/h;

.field public final synthetic d:Lq/e;

.field public final synthetic e:Le/b;

.field public final synthetic f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lp/g;Le/h;Lq/e;Le/b;Landroid/graphics/Bitmap;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/g;",
            "Le/h;",
            "Lq/e;",
            "Le/b;",
            "Landroid/graphics/Bitmap;",
            "Lp9/d<",
            "-",
            "Le/j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le/j;->b:Lp/g;

    iput-object p2, p0, Le/j;->c:Le/h;

    iput-object p3, p0, Le/j;->d:Lq/e;

    iput-object p4, p0, Le/j;->e:Le/b;

    iput-object p5, p0, Le/j;->f:Landroid/graphics/Bitmap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    new-instance p1, Le/j;

    iget-object v1, p0, Le/j;->b:Lp/g;

    iget-object v2, p0, Le/j;->c:Le/h;

    iget-object v3, p0, Le/j;->d:Lq/e;

    iget-object v4, p0, Le/j;->e:Le/b;

    iget-object v5, p0, Le/j;->f:Landroid/graphics/Bitmap;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/j;-><init>(Lp/g;Le/h;Lq/e;Le/b;Landroid/graphics/Bitmap;Lp9/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnc/a0;

    .line 2
    .line 3
    check-cast p2, Lp9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Le/j;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Le/j;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Le/j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Le/j;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lk/i;

    .line 26
    .line 27
    iget-object v1, p0, Le/j;->b:Lp/g;

    .line 28
    .line 29
    iget-object v3, p0, Le/j;->c:Le/h;

    .line 30
    .line 31
    iget-object v5, v3, Le/h;->h:Ljava/util/ArrayList;

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    iget-object v8, p0, Le/j;->d:Lq/e;

    .line 35
    .line 36
    iget-object v9, p0, Le/j;->e:Le/b;

    .line 37
    .line 38
    iget-object v3, p0, Le/j;->f:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    const/4 v10, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v3, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    :goto_0
    move-object v3, p1

    .line 47
    move-object v4, v1

    .line 48
    move-object v7, v1

    .line 49
    invoke-direct/range {v3 .. v10}, Lk/i;-><init>(Lp/g;Ljava/util/List;ILp/g;Lq/e;Le/b;Z)V

    .line 50
    .line 51
    .line 52
    iput v2, p0, Le/j;->a:I

    .line 53
    .line 54
    invoke-virtual {p1, v1, p0}, Lk/i;->c(Lp/g;Lp9/d;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v0, :cond_3

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_3
    :goto_1
    return-object p1
.end method
