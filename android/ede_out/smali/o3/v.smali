.class public final Lo3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo3/b$a;


# instance fields
.field public final synthetic a:Lo3/d;


# direct methods
.method public constructor <init>(Lo3/d;)V
    .locals 0

    iput-object p1, p0, Lo3/v;->a:Lo3/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo3/v;->a:Lo3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lo3/d;->n:Lh4/i;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
