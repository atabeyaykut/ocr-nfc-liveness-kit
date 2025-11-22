.class public final Lh6/o0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh6/o0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh5/b<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh6/o0;


# direct methods
.method public constructor <init>(Lh6/o0;)V
    .locals 0

    iput-object p1, p0, Lh6/o0$a;->a:Lh6/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lh5/k;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lh5/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lh5/k;->m()Z

    move-result v0

    iget-object v1, p0, Lh6/o0$a;->a:Lh6/o0;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lh6/o0;->b:Lh5/l;

    invoke-virtual {p1}, Lh5/k;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lh5/l;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lh6/o0;->b:Lh5/l;

    invoke-virtual {p1}, Lh5/k;->h()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lh5/l;->a(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
