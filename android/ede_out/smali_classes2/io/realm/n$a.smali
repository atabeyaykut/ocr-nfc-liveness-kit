.class public final Lio/realm/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/n;-><init>(Lio/realm/m0;Lio/realm/internal/OsSharedRealm$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/realm/m0;

.field public final synthetic b:Lio/realm/n;


# direct methods
.method public constructor <init>(Lio/realm/n;Lio/realm/m0;)V
    .locals 0

    iput-object p1, p0, Lio/realm/n$a;->b:Lio/realm/n;

    iput-object p2, p0, Lio/realm/n$a;->a:Lio/realm/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lio/realm/n$a;->a:Lio/realm/m0;

    .line 5
    .line 6
    iget-object p1, p1, Lio/realm/m0;->c:Lio/realm/o0;

    .line 7
    .line 8
    iget-boolean p1, p1, Lio/realm/o0;->l:Z

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object p1, p0, Lio/realm/n$a;->b:Lio/realm/n;

    .line 14
    .line 15
    iget-object v0, p1, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 16
    .line 17
    invoke-static {v0}, Lio/realm/internal/OsObjectStore;->c(Lio/realm/internal/OsSharedRealm;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide/16 v2, -0x1

    .line 22
    .line 23
    cmp-long v4, v0, v2

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iget-object v0, p1, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 29
    .line 30
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->beginTransaction()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p1, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 34
    .line 35
    invoke-static {v0}, Lio/realm/internal/OsObjectStore;->c(Lio/realm/internal/OsSharedRealm;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    cmp-long v4, v0, v2

    .line 40
    .line 41
    if-nez v4, :cond_3

    .line 42
    .line 43
    iget-object v0, p1, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 44
    .line 45
    invoke-static {v0}, Lio/realm/internal/OsObjectStore;->d(Lio/realm/internal/OsSharedRealm;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-object p1, p1, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 49
    .line 50
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->commitTransaction()V

    .line 51
    .line 52
    .line 53
    return-void
.end method
