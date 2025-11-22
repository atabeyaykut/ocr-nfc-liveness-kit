.class public final synthetic Lmg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/f;


# instance fields
.field public final synthetic a:Lmg/b;

.field public final synthetic b:Landroidx/camera/core/ImageProxy;


# direct methods
.method public synthetic constructor <init>(Lmg/b;Landroidx/camera/core/ImageProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmg/a;->a:Lmg/b;

    iput-object p2, p0, Lmg/a;->b:Landroidx/camera/core/ImageProxy;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    iget-object v1, p0, Lmg/a;->a:Lmg/b;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "$imageProxy"

    .line 9
    .line 10
    iget-object v2, p0, Lmg/a;->b:Landroidx/camera/core/ImageProxy;

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "it"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, v1, Lmg/b;->b:Z

    .line 22
    .line 23
    invoke-interface {v2}, Landroidx/camera/core/ImageProxy;->close()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
