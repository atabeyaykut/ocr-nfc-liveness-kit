.class public final Li1/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Li1/g;


# direct methods
.method public constructor <init>(Li1/g;)V
    .locals 0

    iput-object p1, p0, Li1/g$c;->a:Li1/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Li1/g$c;->a:Li1/g;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Li1/g$a;

    invoke-virtual {v1, p1}, Li1/g;->b(Li1/g$a;)V

    return v2

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Li1/g$a;

    iget-object v0, v1, Li1/g;->d:Lcom/bumptech/glide/o;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/o;->k(Ln1/g;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
