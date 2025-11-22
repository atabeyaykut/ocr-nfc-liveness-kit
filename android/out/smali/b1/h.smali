.class public interface abstract Lb1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb1/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb1/j$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lb1/j$a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lb1/j;

    .line 7
    .line 8
    iget-object v0, v0, Lb1/j$a;->a:Ljava/util/Map;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lb1/j;-><init>(Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lb1/h;->a:Lb1/j;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
