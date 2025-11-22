.class public final synthetic Lud/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lud/j$a$a;

.field public final synthetic b:Lud/d;

.field public final synthetic c:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lud/j$a$a;Lud/d;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lud/i;->a:Lud/j$a$a;

    iput-object p2, p0, Lud/i;->b:Lud/d;

    iput-object p3, p0, Lud/i;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lud/i;->a:Lud/j$a$a;

    iget-object v0, v0, Lud/j$a$a;->b:Lud/j$a;

    iget-object v1, p0, Lud/i;->b:Lud/d;

    iget-object v2, p0, Lud/i;->c:Ljava/lang/Throwable;

    invoke-interface {v1, v0, v2}, Lud/d;->onFailure(Lud/b;Ljava/lang/Throwable;)V

    return-void
.end method
