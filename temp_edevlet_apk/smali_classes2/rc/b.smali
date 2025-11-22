.class public interface abstract Lrc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g0:Lx5/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx5/a;

    invoke-direct {v0}, Lx5/a;-><init>()V

    sput-object v0, Lrc/b;->g0:Lx5/a;

    return-void
.end method


# virtual methods
.method public abstract b(Lrc/e0;Lrc/b0;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
