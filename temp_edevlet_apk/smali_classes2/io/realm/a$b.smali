.class public final Lio/realm/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lio/realm/a;

.field public b:Lio/realm/internal/p;

.field public c:Lio/realm/internal/c;

.field public d:Z

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/a$b;->a:Lio/realm/a;

    iput-object v0, p0, Lio/realm/a$b;->b:Lio/realm/internal/p;

    iput-object v0, p0, Lio/realm/a$b;->c:Lio/realm/internal/c;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/realm/a$b;->d:Z

    iput-object v0, p0, Lio/realm/a$b;->e:Ljava/util/List;

    return-void
.end method

.method public final b(Lio/realm/a;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/a;",
            "Lio/realm/internal/p;",
            "Lio/realm/internal/c;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/realm/a$b;->a:Lio/realm/a;

    iput-object p2, p0, Lio/realm/a$b;->b:Lio/realm/internal/p;

    iput-object p3, p0, Lio/realm/a$b;->c:Lio/realm/internal/c;

    iput-boolean p4, p0, Lio/realm/a$b;->d:Z

    iput-object p5, p0, Lio/realm/a$b;->e:Ljava/util/List;

    return-void
.end method
