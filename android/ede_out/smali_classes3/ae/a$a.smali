.class public final Lae/a$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/a;->analyze(Landroidx/camera/core/ImageProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ljava/util/List<",
        "Lx7/a;",
        ">;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lae/a;

.field public final synthetic b:Landroidx/camera/core/ImageProxy;


# direct methods
.method public constructor <init>(Lae/a;Landroidx/camera/core/ImageProxy;)V
    .locals 0

    iput-object p1, p0, Lae/a$a;->a:Lae/a;

    iput-object p2, p0, Lae/a$a;->b:Landroidx/camera/core/ImageProxy;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Lm9/t;->c1(Ljava/util/List;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lx7/a;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, v0

    .line 14
    :goto_0
    if-eqz p1, :cond_3

    .line 15
    .line 16
    iget-object v1, p1, Lx7/a;->a:Lz7/g;

    .line 17
    .line 18
    invoke-interface {v1}, Lz7/g;->a()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/16 v2, 0x1000

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    if-gt v1, v2, :cond_1

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v1, -0x1

    .line 31
    :cond_2
    move v3, v1

    .line 32
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    move-object v1, v0

    .line 38
    :goto_2
    const/4 v2, 0x0

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/16 v3, 0x100

    .line 47
    .line 48
    if-ne v1, v3, :cond_5

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    goto :goto_4

    .line 52
    :cond_5
    :goto_3
    const/4 v1, 0x0

    .line 53
    :goto_4
    if-eqz p1, :cond_6

    .line 54
    .line 55
    iget-object p1, p1, Lx7/a;->a:Lz7/g;

    .line 56
    .line 57
    invoke-interface {p1}, Lz7/g;->p()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :cond_6
    iget-object p1, p0, Lae/a$a;->a:Lae/a;

    .line 62
    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    iget-object v3, p1, Lae/a;->a:Lae/b;

    .line 66
    .line 67
    invoke-interface {v3, v0, v1}, Lae/b;->a(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    :cond_7
    iput-boolean v2, p1, Lae/a;->b:Z

    .line 71
    .line 72
    iget-object p1, p0, Lae/a$a;->b:Landroidx/camera/core/ImageProxy;

    .line 73
    .line 74
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 75
    .line 76
    .line 77
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 78
    .line 79
    return-object p1
.end method
