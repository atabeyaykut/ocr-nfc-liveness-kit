.class public final Lr5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr5/a$a;
    }
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public final a:Ln5/a;

.field public final b:Ln5/h;


# direct methods
.method public constructor <init>(Lr5/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lr5/a$a;->b:Lr5/e;

    .line 5
    .line 6
    iget-object v0, p1, Lr5/a$a;->d:Lr5/b;

    .line 7
    .line 8
    iput-object v0, p0, Lr5/a;->a:Ln5/a;

    .line 9
    .line 10
    iget-object p1, p1, Lr5/a$a;->f:Ln5/h;

    .line 11
    .line 12
    iput-object p1, p0, Lr5/a;->b:Ln5/h;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ln5/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr5/a;->b:Ln5/h;

    invoke-virtual {v0}, Ln5/h;->b()Ln5/g;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
