.class public final Lld/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lld/b;


# direct methods
.method public constructor <init>(Lld/b;)V
    .locals 0

    iput-object p1, p0, Lld/c;->a:Lld/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "CycledLeScanner"

    const-string v0, "User switch detected.  Cancelling alarm to prevent potential crash."

    invoke-static {p2, v0, p1}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lld/c;->a:Lld/b;

    invoke-virtual {p1}, Lld/b;->a()V

    return-void
.end method
