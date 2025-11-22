.class public final Lbi/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbi/a$a;
    }
.end annotation


# instance fields
.field public a:Lbi/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.google.android.gms.common.api.Status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iget p2, p2, Lcom/google/android/gms/common/api/Status;->b:I

    if-eqz p2, :cond_3

    const/16 p1, 0xf

    if-eq p2, p1, :cond_1

    const/16 p1, 0x11

    if-eq p2, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    const-string p2, "Api Not Connected"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lbi/a;->a:Lbi/a$a;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lbi/a$a;->i()V

    goto/16 :goto_3

    :cond_2
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    const-string p2, "CommonStatusCodes TIMEOUT"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lbi/a;->a:Lbi/a$a;

    if-eqz p2, :cond_a

    new-instance p2, Lmc/d;

    const-string v1, ":"

    invoke-direct {p2, v1}, Lmc/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lmc/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    sget-object v1, Lm9/v;->a:Lm9/v;

    const/4 v2, 0x1

    if-nez p2, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/util/ListIterator;->nextIndex()I

    move-result p2

    add-int/2addr p2, v2

    invoke-static {p1, p2}, Lm9/t;->t1(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_6
    move-object p1, v1

    :goto_1
    check-cast p1, Ljava/util/Collection;

    new-array p2, v0, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v2

    new-instance p2, Lmc/d;

    const-string v3, "\\s"

    invoke-direct {p2, v3}, Lmc/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lmc/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_7

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/util/ListIterator;->nextIndex()I

    move-result p2

    add-int/2addr p2, v2

    invoke-static {p1, p2}, Lm9/t;->t1(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    :cond_9
    check-cast v1, Ljava/util/Collection;

    new-array p1, v0, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p2

    new-instance v0, Lh6/i0;

    invoke-direct {v0, p1}, Lh6/i0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lqd/b;->i(Ljava/lang/Object;)V

    iget-object p2, p0, Lbi/a;->a:Lbi/a$a;

    if-eqz p2, :cond_b

    invoke-interface {p2, p1}, Lbi/a$a;->h(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    const-string p2, "otpReceiver = null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_3
    return-void
.end method
