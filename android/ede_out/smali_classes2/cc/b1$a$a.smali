.class public final Lcc/b1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/b1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc/b1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcc/e;)V
    .locals 1

    iget-boolean v0, p0, Lcc/b1$a$a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcc/e;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcc/b1$a$a;->a:Z

    return-void
.end method
