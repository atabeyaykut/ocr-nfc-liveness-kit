.class public final Lya/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya/h;


# instance fields
.field public a:Lcom/google/android/gms/internal/clearcut/b0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcb/g;)Lma/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lya/i;->a:Lcom/google/android/gms/internal/clearcut/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/b0;->b(Lcb/g;)Lma/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string p1, "resolver"

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    throw p1
.end method
