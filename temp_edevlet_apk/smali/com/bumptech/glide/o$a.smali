.class public final Lcom/bumptech/glide/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bumptech/glide/o;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/o$a;->a:Lcom/bumptech/glide/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/o$a;->a:Lcom/bumptech/glide/o;

    iget-object v1, v0, Lcom/bumptech/glide/o;->c:Lcom/bumptech/glide/manager/j;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/manager/j;->a(Lcom/bumptech/glide/manager/k;)V

    return-void
.end method
