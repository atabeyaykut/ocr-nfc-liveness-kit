.class public final Lio/realm/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/OsSharedRealm$InitializationCallback;


# instance fields
.field public final synthetic a:Lio/realm/g0$a;

.field public final synthetic b:Lio/realm/a;


# direct methods
.method public constructor <init>(Lio/realm/a;Lio/realm/g0$a;)V
    .locals 0

    iput-object p1, p0, Lio/realm/b;->b:Lio/realm/a;

    iput-object p2, p0, Lio/realm/b;->a:Lio/realm/g0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInit(Lio/realm/internal/OsSharedRealm;)V
    .locals 1

    .line 1
    new-instance v0, Lio/realm/g0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lio/realm/g0;-><init>(Lio/realm/internal/OsSharedRealm;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/realm/b;->a:Lio/realm/g0$a;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lio/realm/g0$a;->d(Lio/realm/g0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
