/*
 *	server/zone/objects/tangible/tool/CraftingTool.h generated by engine3 IDL compiler 0.60
 */

#ifndef CRAFTINGTOOL_H_
#define CRAFTINGTOOL_H_

#include "engine/core/Core.h"

#include "engine/core/ManagedReference.h"

#include "engine/core/ManagedWeakReference.h"

namespace server {
namespace zone {
namespace objects {
namespace scene {

class SceneObject;

} // namespace scene
} // namespace objects
} // namespace zone
} // namespace server

using namespace server::zone::objects::scene;

namespace server {
namespace zone {
namespace objects {
namespace draftschematic {

class DraftSchematic;

} // namespace draftschematic
} // namespace objects
} // namespace zone
} // namespace server

using namespace server::zone::objects::draftschematic;

namespace server {
namespace zone {
namespace packets {
namespace object {

class ObjectMenuResponse;

} // namespace object
} // namespace packets
} // namespace zone
} // namespace server

using namespace server::zone::packets::object;

namespace server {
namespace zone {
namespace objects {
namespace area {

class ActiveArea;

} // namespace area
} // namespace objects
} // namespace zone
} // namespace server

using namespace server::zone::objects::area;

namespace server {
namespace zone {
namespace packets {
namespace scene {

class AttributeListMessage;

} // namespace scene
} // namespace packets
} // namespace zone
} // namespace server

using namespace server::zone::packets::scene;

namespace server {
namespace zone {
namespace objects {
namespace creature {

class CreatureObject;

} // namespace creature
} // namespace objects
} // namespace zone
} // namespace server

using namespace server::zone::objects::creature;

namespace server {
namespace zone {
namespace templates {

class SharedObjectTemplate;

} // namespace templates
} // namespace zone
} // namespace server

using namespace server::zone::templates;

namespace server {
namespace zone {
namespace objects {
namespace scene {
namespace variables {

class ContainerPermissions;

} // namespace variables
} // namespace scene
} // namespace objects
} // namespace zone
} // namespace server

using namespace server::zone::objects::scene::variables;

namespace server {
namespace zone {
namespace objects {
namespace manufactureschematic {

class ManufactureSchematic;

} // namespace manufactureschematic
} // namespace objects
} // namespace zone
} // namespace server

using namespace server::zone::objects::manufactureschematic;

#include "server/zone/objects/tangible/tool/CraftingStation.h"

#include "engine/lua/LuaObject.h"

#include "server/zone/objects/tangible/tool/ToolTangibleObject.h"

#include "system/util/Vector.h"

namespace server {
namespace zone {
namespace objects {
namespace tangible {
namespace tool {

class CraftingTool : public ToolTangibleObject {
public:
	static const int CLOTHING = 1;

	static const int FOOD = 2;

	static const int GENERIC = 3;

	static const int JEDI = 4;

	static const int SPACE = 5;

	static const int STRUCTURE = 6;

	static const int WEAPON = 7;

	CraftingTool();

	void initializeTransientMembers();

	void loadTemplateData(SharedObjectTemplate* templateData);

	void fillObjectMenuResponse(ObjectMenuResponse* menuResponse, CreatureObject* player);

	int handleObjectMenuSelect(CreatureObject* player, byte selectedID);

	void fillAttributeList(AttributeListMessage* msg, CreatureObject* object);

	void updateCraftingValues(CraftingValues* values, bool firstUpdate);

	bool isCraftingTool();

	bool isReady();

	void setReady();

	bool isBusy();

	void setBusy();

	bool isFinished();

	void setFinished();

	void sendToolStartFailure(CreatureObject* player, const String& message);

	int getToolType();

	float getEffectiveness();

	float getComplexityLevel();

	Reference<TangibleObject* > getPrototype();

	Reference<ManufactureSchematic* > getManufactureSchematic();

	Vector<unsigned int>* getToolTabs();

	void disperseItems();

	DistributedObjectServant* _getImplementation();
	DistributedObjectServant* _getImplementationForRead();

	void _setImplementation(DistributedObjectServant* servant);

protected:
	CraftingTool(DummyConstructorParameter* param);

	virtual ~CraftingTool();

	friend class CraftingToolHelper;
};

} // namespace tool
} // namespace tangible
} // namespace objects
} // namespace zone
} // namespace server

using namespace server::zone::objects::tangible::tool;

namespace server {
namespace zone {
namespace objects {
namespace tangible {
namespace tool {

class CraftingToolImplementation : public ToolTangibleObjectImplementation {
protected:
	String status;

	int type;

	float effectiveness;

	int complexityLevel;

	Vector<unsigned int> enabledTabs;

public:
	static const int CLOTHING = 1;

	static const int FOOD = 2;

	static const int GENERIC = 3;

	static const int JEDI = 4;

	static const int SPACE = 5;

	static const int STRUCTURE = 6;

	static const int WEAPON = 7;

	CraftingToolImplementation();

	CraftingToolImplementation(DummyConstructorParameter* param);

	void initializeTransientMembers();

	void loadTemplateData(SharedObjectTemplate* templateData);

	void fillObjectMenuResponse(ObjectMenuResponse* menuResponse, CreatureObject* player);

	int handleObjectMenuSelect(CreatureObject* player, byte selectedID);

	void fillAttributeList(AttributeListMessage* msg, CreatureObject* object);

	void updateCraftingValues(CraftingValues* values, bool firstUpdate);

	bool isCraftingTool();

	bool isReady();

	void setReady();

	bool isBusy();

	void setBusy();

	bool isFinished();

	void setFinished();

	void sendToolStartFailure(CreatureObject* player, const String& message);

	int getToolType();

	float getEffectiveness();

	float getComplexityLevel();

	Reference<TangibleObject* > getPrototype();

	Reference<ManufactureSchematic* > getManufactureSchematic();

	Vector<unsigned int>* getToolTabs();

	void disperseItems();

	WeakReference<CraftingTool*> _this;

	operator const CraftingTool*();

	DistributedObjectStub* _getStub();
	virtual void readObject(ObjectInputStream* stream);
	virtual void writeObject(ObjectOutputStream* stream);
protected:
	virtual ~CraftingToolImplementation();

	void finalize();

	void _initializeImplementation();

	void _setStub(DistributedObjectStub* stub);

	void lock(bool doLock = true);

	void lock(ManagedObject* obj);

	void rlock(bool doLock = true);

	void wlock(bool doLock = true);

	void wlock(ManagedObject* obj);

	void unlock(bool doLock = true);

	void runlock(bool doLock = true);

	void _serializationHelperMethod();
	bool readObjectMember(ObjectInputStream* stream, const uint32& nameHashCode);
	int writeObjectMembers(ObjectOutputStream* stream);

	friend class CraftingTool;
};

class CraftingToolAdapter : public ToolTangibleObjectAdapter {
public:
	CraftingToolAdapter(CraftingTool* impl);

	void invokeMethod(sys::uint32 methid, DistributedMethod* method);

	void initializeTransientMembers();

	int handleObjectMenuSelect(CreatureObject* player, byte selectedID);

	bool isCraftingTool();

	bool isReady();

	void setReady();

	bool isBusy();

	void setBusy();

	bool isFinished();

	void setFinished();

	void sendToolStartFailure(CreatureObject* player, const String& message);

	int getToolType();

	float getEffectiveness();

	float getComplexityLevel();

	Reference<TangibleObject* > getPrototype();

	Reference<ManufactureSchematic* > getManufactureSchematic();

	void disperseItems();

};

class CraftingToolHelper : public DistributedObjectClassHelper, public Singleton<CraftingToolHelper> {
	static CraftingToolHelper* staticInitializer;

public:
	CraftingToolHelper();

	void finalizeHelper();

	DistributedObject* instantiateObject();

	DistributedObjectServant* instantiateServant();

	DistributedObjectAdapter* createAdapter(DistributedObjectStub* obj);

	friend class Singleton<CraftingToolHelper>;
};

} // namespace tool
} // namespace tangible
} // namespace objects
} // namespace zone
} // namespace server

using namespace server::zone::objects::tangible::tool;

#endif /*CRAFTINGTOOL_H_*/
