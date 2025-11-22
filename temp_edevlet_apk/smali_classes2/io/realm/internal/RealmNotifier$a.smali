.class public final Lio/realm/internal/RealmNotifier$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/RealmNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/internal/k$a<",
        "Lio/realm/internal/RealmNotifier$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/realm/internal/RealmNotifier;


# direct methods
.method public constructor <init>(Lio/realm/internal/RealmNotifier;)V
    .locals 0

    iput-object p1, p0, Lio/realm/internal/RealmNotifier$a;->a:Lio/realm/internal/RealmNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/realm/internal/k$b;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lio/realm/internal/RealmNotifier$b;

    .line 2
    .line 3
    iget-object p2, p0, Lio/realm/internal/RealmNotifier$a;->a:Lio/realm/internal/RealmNotifier;

    .line 4
    .line 5
    invoke-static {p2}, Lio/realm/internal/RealmNotifier;->access$000(Lio/realm/internal/RealmNotifier;)Lio/realm/internal/OsSharedRealm;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p2}, Lio/realm/internal/RealmNotifier;->access$000(Lio/realm/internal/RealmNotifier;)Lio/realm/internal/OsSharedRealm;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    iget-object p1, p1, Lio/realm/internal/k$b;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Lio/realm/n0;

    .line 24
    .line 25
    invoke-interface {p1}, Lio/realm/n0;->a()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
