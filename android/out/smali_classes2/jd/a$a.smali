.class public final Ljd/a$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljd/a;


# direct methods
.method public constructor <init>(Ljd/a;)V
    .locals 0

    iput-object p1, p0, Ljd/a$a;->a:Ljd/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "the screen going off"

    iget-object p2, p0, Ljd/a$a;->a:Ljd/a;

    invoke-virtual {p2, p1}, Ljd/a;->a(Ljava/lang/String;)V

    iget-object p1, p2, Ljd/a;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p2, Ljd/a;->d:Ljd/a$a;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
