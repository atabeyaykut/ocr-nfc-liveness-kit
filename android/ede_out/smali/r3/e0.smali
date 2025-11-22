.class public final Lr3/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/c$a;


# instance fields
.field public final synthetic a:Lo3/c;


# direct methods
.method public constructor <init>(Lo3/c;)V
    .locals 0

    iput-object p1, p0, Lr3/e0;->a:Lo3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lr3/e0;->a:Lo3/c;

    invoke-interface {v1, v0}, Lo3/c;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    iget-object v0, p0, Lr3/e0;->a:Lo3/c;

    invoke-interface {v0, p1}, Lo3/c;->onConnectionSuspended(I)V

    return-void
.end method
