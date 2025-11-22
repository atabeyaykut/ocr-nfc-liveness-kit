.class public interface abstract Lrc/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j0:La0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La0/b;

    invoke-direct {v0}, La0/b;-><init>()V

    sput-object v0, Lrc/m;->j0:La0/b;

    return-void
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
