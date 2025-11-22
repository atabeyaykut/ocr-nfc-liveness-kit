.class public final Lio/realm/internal/OsRealmConfig$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsRealmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lio/realm/o0;

.field public b:Lio/realm/internal/OsSchemaInfo;

.field public c:Lio/realm/internal/OsSharedRealm$MigrationCallback;

.field public d:Lio/realm/internal/OsSharedRealm$InitializationCallback;

.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/realm/o0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/OsRealmConfig$b;->b:Lio/realm/internal/OsSchemaInfo;

    iput-object v0, p0, Lio/realm/internal/OsRealmConfig$b;->c:Lio/realm/internal/OsSharedRealm$MigrationCallback;

    iput-object v0, p0, Lio/realm/internal/OsRealmConfig$b;->d:Lio/realm/internal/OsSharedRealm$InitializationCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/OsRealmConfig$b;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lio/realm/internal/OsRealmConfig$b;->f:Ljava/lang/String;

    iput-object p1, p0, Lio/realm/internal/OsRealmConfig$b;->a:Lio/realm/o0;

    return-void
.end method
