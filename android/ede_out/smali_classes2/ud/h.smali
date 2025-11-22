.class public final synthetic Lud/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lud/j$a$a;

.field public final synthetic b:Lud/d;

.field public final synthetic c:Lud/c0;


# direct methods
.method public synthetic constructor <init>(Lud/j$a$a;Lud/d;Lud/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lud/h;->a:Lud/j$a$a;

    iput-object p2, p0, Lud/h;->b:Lud/d;

    iput-object p3, p0, Lud/h;->c:Lud/c0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lud/h;->a:Lud/j$a$a;

    iget-object v0, v0, Lud/j$a$a;->b:Lud/j$a;

    iget-object v1, v0, Lud/j$a;->b:Lud/b;

    invoke-interface {v1}, Lud/b;->m()Z

    move-result v1

    iget-object v2, p0, Lud/h;->b:Lud/d;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v1}, Lud/d;->onFailure(Lud/b;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lud/h;->c:Lud/c0;

    invoke-interface {v2, v0, v1}, Lud/d;->onResponse(Lud/b;Lud/c0;)V

    :goto_0
    return-void
.end method
