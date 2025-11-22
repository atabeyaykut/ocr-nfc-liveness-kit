.class public final Lld/i$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lld/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lld/i;


# direct methods
.method public constructor <init>(Lld/i;)V
    .locals 0

    iput-object p1, p0, Lld/i$b;->a:Lld/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lld/i$b;->a:Lld/i;

    iget-boolean p2, p1, Lld/i;->C:Z

    const/4 v0, 0x0

    const-string v1, "CycledLeScannerForLollipop"

    if-nez p2, :cond_0

    const-string p1, "Screen has gone off while outside the main scan cycle.  We will do nothing."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p2, "Screen has gone off while using a wildcard scan filter.  Restarting scanner with non-empty filters."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p2, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lld/i;->r()V

    invoke-virtual {p1}, Lld/i;->p()V

    :goto_0
    return-void
.end method
